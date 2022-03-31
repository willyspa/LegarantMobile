class AddActiveCToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :active__c, :boolean, :default => true
  end
end
