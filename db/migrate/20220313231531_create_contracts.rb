class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :sfid
      t.string :contractnumber
      t.string :accountid
      t.string :status
      t.integer :contractterm
      t.date :startdate

      t.timestamps
    end
  end
end
