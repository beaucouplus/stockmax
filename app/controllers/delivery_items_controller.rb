class DeliveryItemsController < ApplicationController
  def create
    @delivery = Delivery.find(delivery_item_params[:delivery_id])
    @delivery_item = DeliveryItem.new(delivery_item_params)
    @delivery_item.save
    render json: @delivery.items
  end

  def index
    @delivery_items = Delivery.find(params[:id]).items
    render json: @delivery_items
  end

  private

  def delivery_item_params
    params.require(:delivery_item).permit(:delivery_id, :item_id)
  end
end
