class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.references :order, null: false, foreign_key: true, index: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
