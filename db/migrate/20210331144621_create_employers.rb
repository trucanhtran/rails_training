class CreateEmployers < ActiveRecord::Migration[6.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
