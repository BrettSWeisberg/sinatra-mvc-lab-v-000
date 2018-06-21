require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = Piglatinize.new
    @user_input = pig.latinize(params[:user_input])
    erb :index
  end

end
