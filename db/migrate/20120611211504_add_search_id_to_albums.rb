class AddSearchIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :search_id, :integer
  end
end
