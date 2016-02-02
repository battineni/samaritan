class AddIndexToEventsGeners < ActiveRecord::Migration
  def change
    add_index(:events_genres, [:event_id, :genre_id], unique: true)
  end
end
