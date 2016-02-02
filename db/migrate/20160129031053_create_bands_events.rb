class CreateBandsEvents < ActiveRecord::Migration
  def up
    create_table :bands_events, :id => false do |t|
      t.integer :band_id
      t.integer :event_id
    end

    add_index :bands_events, :band_id
    add_index :bands_events, :event_id
  end

  def down
    drop_table :bands_events
  end

end
