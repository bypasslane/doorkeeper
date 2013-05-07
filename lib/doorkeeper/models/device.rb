module Doorkeeper
  module Models
    module Device
      def validate_device?
        Doorkeeper.configuration.confirm_device?
      end

      def self.included(base)
        base.class_eval do
          belongs_to :device, :polymorphic => true
          validates :device, :presence => true, :if => :validate_device?
        end
      end
    end
  end
end