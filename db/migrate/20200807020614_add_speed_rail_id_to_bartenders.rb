class AddSpeedRailIdToBartenders < ActiveRecord::Migration[6.0]
  def self.up
  change_table :bartenders do |t|
    t.integer :speed_rail_id
  end
end
end
