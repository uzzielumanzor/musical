class AddSearchIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :search_id, :integer
  end
end
