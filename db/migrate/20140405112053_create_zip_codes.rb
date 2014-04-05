class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.integer :zip_code
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
