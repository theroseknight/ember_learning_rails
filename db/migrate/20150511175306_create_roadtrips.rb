class CreateRoadtrips < ActiveRecord::Migration
  def change
    create_table :roadtrips do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
