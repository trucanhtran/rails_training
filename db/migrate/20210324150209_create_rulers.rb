class CreateRulers < ActiveRecord::Migration[6.1]
  def change
    create_table :rulers do |t|
      t.string :name
      t.string :color
      t.string :lenght

      t.timestamps
    end
  end
end
