class Api::V1::SubscriptionsController < ApplicationController
    def create
        subscription = Subscription.new(sub_params)
        if subscription.save
          render json: SubscriptionSerializer.new(subscription)
        else
          render json: { error: subscription.errors.full_messages.to_sentence }
        end
    end
  
    private
  
    def sub_params
      params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
    end
end