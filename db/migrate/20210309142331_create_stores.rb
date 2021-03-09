class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.decimal :price
      t.integer :category_id, null: false, index: true

      t.timestamps
    end
  end
end
