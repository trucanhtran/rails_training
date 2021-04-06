class CreateSons < ActiveRecord::Migration[6.1]
  def change
    create_table :sons do |t|
      t.string :name
      t.integer :age
      t.integer :phone
      t.string :address
      t.belongs_to :father

      t.timestamps
    end
  end
end
