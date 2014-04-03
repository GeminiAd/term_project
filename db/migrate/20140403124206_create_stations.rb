class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :company
      t.string :address
      t.string :zip
      t.string :state
      t.string :country
      t.string :url
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
