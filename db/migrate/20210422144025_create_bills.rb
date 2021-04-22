class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.timestamps :date
      t.belongs_to :customer
      t.belongs_to :product

      t.timestamps
    end
  end
end
