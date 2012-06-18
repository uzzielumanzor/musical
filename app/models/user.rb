class User < ActiveRecord::Base
	has_many :searches
	has_secure_password
	validates_presence_of :email, :username, :password_confirmation, :password
  	attr_accessible :email, :username, :password, :password_confirmation
  	validates_uniqueness_of :username, :email

  def searches
    @searches = User.find_by_username(params[:id]).searches
    render 'searches/index'
  end

  def to_param
	username
  end

end
