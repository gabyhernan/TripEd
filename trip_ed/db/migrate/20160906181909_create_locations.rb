class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :address
      t.string :description
      t.string :subject
      t.string :accessibility

      t.timestamps
    end
  end
end
