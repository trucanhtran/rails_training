class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :dexcription

      t.timestamps
    end
  end
    def down
      drop_table :products
    end
end
