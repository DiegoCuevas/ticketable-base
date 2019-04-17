class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :movie_name
      t.string :seat
      t.string :tier
      t.integer :price
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
