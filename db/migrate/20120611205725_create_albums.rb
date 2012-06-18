class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title_album
      t.string :art
      t.string :identity
      t.text :title_song

      t.timestamps
    end
  end
end
