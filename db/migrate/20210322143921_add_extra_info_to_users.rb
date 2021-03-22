class AddExtraInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :sex, :boolean, default: false
    add_column :users, :country, :integer
    add_column :users, :description, :text
  end
end
