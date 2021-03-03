class AddEmail < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :email, :string
    remove_column :staffs, :gender, :boolean
  end
end
