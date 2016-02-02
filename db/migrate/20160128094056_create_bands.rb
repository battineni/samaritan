class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :bio
      t.string :act
      t.string :hometown
      t.string :country
      t.date :active_since

      t.timestamps null: false
    end
  end
end
