class AddAccountnameToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :accountname, :string
  end
end
