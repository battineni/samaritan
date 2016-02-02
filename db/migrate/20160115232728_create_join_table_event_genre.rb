class CreateJoinTableEventGenre < ActiveRecord::Migration
  def change
    create_join_table :events, :genres do |t|
       t.index [:event_id, :genre_id]
       t.index [:genre_id, :event_id]
    end
  end
end
