class AddAccountnameToContract < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :accountname, :string
  end
end
