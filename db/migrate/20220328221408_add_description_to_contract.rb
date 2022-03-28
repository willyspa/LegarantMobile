class AddDescriptionToContract < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :description, :string
  end
end
