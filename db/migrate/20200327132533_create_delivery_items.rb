class CreateDeliveryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_items do |t|
      t.references :item, foreign_key: true
      t.references :delivery, foreign_key: true

      t.timestamps
    end
  end
end
