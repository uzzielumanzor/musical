class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.integer :len

      t.timestamps
    end
  end
end
