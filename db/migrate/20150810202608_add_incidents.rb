class AddIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :bike, index: true, foreign_key: true
      t.string :incident_address
      t.datetime :incident_start_time
      t.datetime :incident_end_time
      t.string :location_type
      t.text :description, :limit => 2000
      t.string :gps_location
    end
  end
end
