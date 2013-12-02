class User < ActiveRecord::Base
  validates_presence_of :username, :message=>"User Name will not 
be blank" 
  validates_presence_of :password, :message=>"Password cannot be 
blank" 

 # # # # Authenticate method # # # 
  def self.authenticate(pass) 
    find(:first, :conditions=>["password = ?", pass])  # login, password are your users table fields.. 
  end
end
