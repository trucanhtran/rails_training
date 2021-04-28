class AddPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    add_columns :users, :password, type: :text
  end
end
