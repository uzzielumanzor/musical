class Track < ActiveRecord::Base
	belongs_to :search
  	attr_accessible :album, :artist, :len, :title
  	serialize :album
def encontrar_varios search_id
	query  = Webservice::Query.new
  		track_includes = Webservice::TrackIncludes.new(:releases => true)
 		@search=Search.find_by_id(search_id)

 		@search.resp.to_collection.entries.to_a.each do |k|
 			id = k.id.to_s.split("/").last
 			tck = query.get_track_by_id(id, track_includes)
 			Track.create(album: tck.releases.entries, artist: k.artist.to_s,
 				len: k.duration.to_i, title: k.title)
 		end	
  end	

end
