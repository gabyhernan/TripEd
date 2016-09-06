class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.string :date
      t.string :start_time
      t.boolean :reserved

      t.timestamps
    end
  end
end
