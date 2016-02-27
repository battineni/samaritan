class AddStarttimeToEvents < ActiveRecord::Migration

  def change
    change_column(:events, :start_date, :date)
    change_column(:events, :end_date, :date)
    add_column(:events, :start_time, :time)
    add_column(:events, :end_time, :time)
  end

end
