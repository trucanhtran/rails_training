class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.string :name, default: "no name 1234"
      t.decimal :price, default: 10
      t.integer :category_id, null: false
      t.integer :product_id, null: false
      t.integer :order_id, null: false
      t.boolean :in_stock

      t.timestamps
    end
  end
end
