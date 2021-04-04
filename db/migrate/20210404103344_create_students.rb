class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :phone
      t.string :address
      t.text :bio
      t.belongs_to :subject

      t.timestamps
    end
  end
end
