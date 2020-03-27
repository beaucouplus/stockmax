class DeliveriesController < ApplicationController
  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.save
    render json: @delivery
  end

  def index
    @deliveries = Delivery.all
    render json: @deliveries
  end

  private

  def delivery_params
    params.require(:delivery).permit(:name)
  end
end
