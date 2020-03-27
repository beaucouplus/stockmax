class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.save
    render json: @item
  end

  def index
    @items = Item.all
    render json: @items
  end

  private

  def item_params
    params.require(:item).permit(:name, :place)
  end
end
