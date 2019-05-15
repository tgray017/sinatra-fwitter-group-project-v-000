class UsersController < ApplicationController

  get '/signup' do
    erb :"users/create_user"
  end
  
  post '/signup' do
    if params.values.any? {|s| s.blank?}
      # set a flash message here
      redirect to '/signup'
    else
      user = User.create(:email => params[:email], :username => params[:username], :password => params[:password])
      # hash the password
      # start a session here
      redirect to '/tweets'
    end
  end

end
