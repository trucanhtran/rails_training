class AddNewColumnToApple < ActiveRecord::Migration[6.1]
  def change
    add_column :apples, :height, :integer
    add_column :apples, :weight, :integer
  end
end
