class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :sfid
      t.string :contract__c
      t.string :name

      t.timestamps
    end
  end
end
