class Add1132312zyzfadsfsdaf < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :xyz, :integer
    add_column :users, :xyz1, :integer
    add_column :users, :xyz2, :integer
    add_column :users, :xyz3, :integer
    add_column :users, :xyz4, :integer
    add_column :users, :xyz5, :integer
    remove_column :users, :email, :string
  end
end
