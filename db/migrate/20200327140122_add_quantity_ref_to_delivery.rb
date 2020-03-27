class AddQuantityRefToDelivery < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :quantity_ref, :integer, default: 0
  end
end
