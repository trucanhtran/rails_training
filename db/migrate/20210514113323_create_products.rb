class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :des
      t.belongs_to :user

      t.timestamps
    end
  end
end
