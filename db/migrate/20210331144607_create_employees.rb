class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :phone
      t.belongs_to :employer

      t.timestamps
    end
  end
end
