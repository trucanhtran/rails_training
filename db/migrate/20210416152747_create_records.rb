class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :course
      t.float :grade
      t.belongs_to :teacher
      t.belongs_to :student

      t.timestamps
    end
  end
end
