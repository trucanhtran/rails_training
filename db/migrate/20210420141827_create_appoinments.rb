class CreateAppoinments < ActiveRecord::Migration[6.1]
  def change
    create_table :appoinments do |t|
      t.timestamp :date
      t.integer :room
      t.belongs_to :physican
      t.belongs_to :patient

      t.timestamps
    end
  end
end
