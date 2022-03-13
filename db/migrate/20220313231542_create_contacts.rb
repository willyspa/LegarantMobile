class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :sfid
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :mobilephone
      t.string :accountid
      t.string :password__c

      t.timestamps
    end
  end
end
