class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :bands, :events do |t|
       t.index [:band_id, :event_id]
       t.index [:event_id, :band_id]
    end
  end
end
