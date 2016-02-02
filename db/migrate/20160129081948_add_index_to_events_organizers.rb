class AddIndexToEventsOrganizers < ActiveRecord::Migration
  def change
    add_index(:events_organizers, [:event_id, :organizer_id], unique: true)
  end
end
