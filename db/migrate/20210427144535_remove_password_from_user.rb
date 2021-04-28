class RemovePasswordFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_columns :users, :password
  end
end
