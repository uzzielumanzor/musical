include MusicBrainz
class Album < ActiveRecord::Base
	belongs_to :search
  attr_accessible :art, :identity, :title_album, :title_song
  serialize :title_song
  def encontrar_varios search_id
  		query  = Webservice::Query.new
  		release_includes = Webservice::ReleaseIncludes.new(:tracks => true)
 		@search=Search.find_by_id(search_id)

 		@search.resp.to_collection.entries.to_a.each do |k|
 			id = k.id.to_s.split("/").last
 			release = query.get_release_by_id(id, release_includes)
 			Album.create(title_album: k.title.to_s, identity: k.id.to_s,
 			art: k.artist.to_s, title_song: release.tracks.entries)
 		end	
  end

end

