class CreateSeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :seeds do |t|
      t.string :name
      t.text :description
      t.boolean :in_stock
      t.belongs_to :stock

      t.timestamps
    end
  end
end
