require 'pry'

class Api::V1::SubscriptionsController < ApplicationController
  def index
    customer = Customer.find(params[:customer_id])
    if customer.subscriptions.empty? == false
      render json: CustomerSubscriptionSerializer.new(customer.subscriptions)
    else
      render json: { error: subscription.errors.full_messages.to_sentence }
    end
  end
  
  def create
    subscription = Subscription.new(sub_params)
    if subscription.save
      render json: SubscriptionSerializer.new(subscription)
    else
      render json: { error: subscription.errors.full_messages.to_sentence }
    end
  end

  def destroy
    if Subscription.exists?(params[:id])
      Subscription.destroy(params[:id])
    else
      render json: { error: 'No subscription found' }
    end
  end
  
  private

  def sub_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end
end