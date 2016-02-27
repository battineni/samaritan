class ChangePriceDatatypeToEvents < ActiveRecord::Migration
  def change
    change_column :events, :price, 'numeric USING CAST(price AS numeric)'
  end
end
