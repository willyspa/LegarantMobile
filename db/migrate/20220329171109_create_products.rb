class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sfid
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
