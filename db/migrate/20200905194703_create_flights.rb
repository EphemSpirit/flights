class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :start, foreign_key: true
      t.integer :finish, foreign_key: true
      t.datetime :departure
      t.string :duration

      t.timestamps
    end
  end
end
