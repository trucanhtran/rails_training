class AddPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password, :string
    add_column :users, :password1, :string
    remove_column :users, :description, :string
  end
end
