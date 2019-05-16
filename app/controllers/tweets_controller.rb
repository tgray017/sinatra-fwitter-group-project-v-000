class TweetsController < ApplicationController

  get '/tweets' do
    if User.logged_in?(session)
      erb :"tweets/tweets"
    else
      redirect to '/login'
    end
  end

end
