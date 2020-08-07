class CreateSpeedRailProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :speed_rail_products do |t|
      t.integer :speed_rail_id
      t.integer :product_id
      t.integer :qty

      t.timestamps
    end
  end
end
