class RemoveClassFromStudent < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :class, :string
  end
end
