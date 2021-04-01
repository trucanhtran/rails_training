class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.integer :rate
      t.belongs_to :category

      t.timestamps
    end
  end
end
