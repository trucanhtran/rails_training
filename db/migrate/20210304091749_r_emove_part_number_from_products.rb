class REmovePartNumberFromProducts < ActiveRecord::Migration[6.1]
  def change
    def up
      remove_column :products, :part_number
    end

    def down
      add_column :products, :part_number, :string
    end
  end
end
