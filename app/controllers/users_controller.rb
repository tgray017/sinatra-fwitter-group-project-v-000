class UsersController < ApplicationController

  get '/signup' do
    if User.logged_in?(session)
      redirect to '/tweets'
    else
      erb :"users/create_user"
    end
  end
  
  post '/signup' do
    if params.values.any? {|s| s.blank?}
      # set a flash message here
      redirect to '/signup'
    else
      user = User.create(:email => params[:email], :username => params[:username], :password => params[:password])
      # hash the password
      session[:user_id] = user.id
      redirect to '/tweets'
    end
  end

end
