class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :student_id
      t.string :class

      t.timestamps
    end
  end
end
