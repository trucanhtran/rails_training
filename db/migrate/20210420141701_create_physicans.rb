class CreatePhysicans < ActiveRecord::Migration[6.1]
  def change
    create_table :physicans do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
