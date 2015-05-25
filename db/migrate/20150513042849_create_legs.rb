class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :roadtrip_id
      t.string :starting_city
      t.string :starting_state
      t.string :ending_city
      t.string :ending_state
      t.string :latitude
      t.string :longitude
      t.integer :marker_position
      t.boolean :home_marker, :default => false
      t.timestamps null: false
    end
  end
end
