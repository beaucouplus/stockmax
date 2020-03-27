class OrderPickerController < ApplicationController
  def index
    @delivery_items = Delivery.find(params[:id]).items
    render json: { data: @delivery_items.map(&:place) }
  end
end