class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :book_type
      t.references :author
      t.timestamps
    end
  end
end
