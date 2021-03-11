class AddClassToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :class_name, :string
  end
end
