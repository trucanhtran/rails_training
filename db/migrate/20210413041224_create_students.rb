class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :phone
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
