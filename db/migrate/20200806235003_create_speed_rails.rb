class CreateSpeedRails < ActiveRecord::Migration[6.0]
  def change
    create_table :speed_rails do |t|
      t.string :location

      t.timestamps
    end
  end
end
