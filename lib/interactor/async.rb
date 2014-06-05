module Interactor
  module Async
    def self.included(base)
      base.class_eval do
        include Interactor
        include ::Celluloid

        extend ClassMethods
        extend ::SuckerPunch::Job::ClassMethods

        class << self
          attr_reader :workers
        end
      end
    end

    def initialize(context = {})
      self.class.define_celluloid_pool(self.class, self.class.workers)
      super
    end

    module ClassMethods
      def perform(context = {})
        new(context).tap do |instance|
          instance.async.perform unless instance.failure?
        end
      end
    end
  end
end
