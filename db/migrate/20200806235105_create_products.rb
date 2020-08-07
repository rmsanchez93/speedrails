class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.integer :par
      t.integer :size_in_oz

      t.timestamps
    end
  end
end
