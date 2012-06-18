include MusicBrainz
class Artist < ActiveRecord::Base
  belongs_to :search
  attr_accessible :identity, :name

  def encontrar_varios search_id
 		@search=Search.find_by_id(search_id)

 		@search.resp.to_collection.entries.to_a.each do |k|
 			Artist.create(name: k.name.to_s, identity: k.id.to_s )
 		end	
  end	
end
