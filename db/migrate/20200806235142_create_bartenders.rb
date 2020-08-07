class CreateBartenders < ActiveRecord::Migration[6.0]
  def change
    create_table :bartenders do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age

      t.timestamps
    end
  end
end
