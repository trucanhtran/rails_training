class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.text :desc
      t.integer :phone
      t.string :sex
      t.boolean :agree


      t.timestamps
    end
  end
end
