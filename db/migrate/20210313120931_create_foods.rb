class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
