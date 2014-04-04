class AddContactInfoToStations < ActiveRecord::Migration
  def change
    add_column :stations, :phone, :string
    add_column :stations, :email, :string
  end
end
