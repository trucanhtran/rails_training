class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.belongs_to :supplier

      t.timestamps
    end
  end
end
