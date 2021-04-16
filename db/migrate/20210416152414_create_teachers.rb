class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.integer :phone

      t.timestamps
    end
  end
end
