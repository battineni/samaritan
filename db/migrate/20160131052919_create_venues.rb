class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :venue_type
      t.text :about
      t.string :location
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
