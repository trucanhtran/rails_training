class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.belongs_to :father
      t.timestamps
    end
  end
end
