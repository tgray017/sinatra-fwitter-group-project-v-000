class User < ActiveRecord::Base
  has_many :tweets
  
  def self.current_user
    User.find(session[:user_id])
  end
end