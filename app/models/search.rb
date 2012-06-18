include MusicBrainz
class Search < ActiveRecord::Base
  belongs_to :user
  has_many :artists
  has_many :albums
  has_many :tracks
  attr_accessible :petition, :resp, :tipo
  serialize :resp
  validates_presence_of :petition
  before_validation :clean_petition, if: "petition.present?"

  def i_found_you
  	if self.tipo == "artist"
  		query  = Webservice::Query.new
  		self.resp = query.get_artists({name: self.petition})
  	elsif self.tipo == "album"
  		query  = Webservice::Query.new
  		self.resp = query.get_releases({title: self.petition})
  	else
  		query  = Webservice::Query.new
  		self.resp = query.get_tracks({title: self.petition})
  	end				
  end	

  private
  def clean_petition
    self.petition = self.petition.strip.capitalize
  end

end
