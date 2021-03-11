class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.integer :author_id, null: false

      t.timestamps
    end
  end
end
a = Book.new(name: "Miko", author_id: 785)
a.save

p = {name: "jav", author_id: 10}
b = Book.new(p)
b.save

q = {name: "mamitas", author_id: 789}
c = Book.new(q)
c.save


