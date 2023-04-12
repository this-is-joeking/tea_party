module Api
  module V1
    class SubscriptionsController < ApplicationController
      before_action :find_customer, only: :index

      def index
        render json: SubscriptionSerializer.new(@customer.subscriptions), status: :ok
      end

      private

      def find_customer
        @customer = Customer.find(params[:customer_id])
        validate_customer
      end

      def validate_customer
        return if @customer

        # TODO: render error here
      end
    end
  end
end