class AddCountryToUser < ActiveRecord::Migration[6.1]
  def change
    add_columns :users, :country, type: :string
  end
end
