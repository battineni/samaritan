class AddPosterToEvents < ActiveRecord::Migration
  def change
    add_column :events, :poster_url, :string
  end
end
