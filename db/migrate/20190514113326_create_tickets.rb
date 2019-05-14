class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :price
      t.string :seat
      t.string :location
      t.string :venue
      t.datetime :valid_from
      t.datetime :valid_until

      t.timestamps
    end
  end
end
