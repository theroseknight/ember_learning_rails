class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.integer :vacation_id
      t.integer :leg_id
      t.string :latitude
      t.string :longitude
      t.timestamps null: false
    end
  end
end
