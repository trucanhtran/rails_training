class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.boolean :in_use, default: false, index: true

      t.timestamps
    end
  end
end

