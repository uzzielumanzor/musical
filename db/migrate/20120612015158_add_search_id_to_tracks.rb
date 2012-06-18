class AddSearchIdToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :search_id, :integer
  end
end
