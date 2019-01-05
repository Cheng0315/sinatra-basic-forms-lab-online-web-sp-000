require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/:puppy' do
    @name = params[:puppy]
    @breed = params[:puppy]
    @age = params[:puppy]

    erb :display_puppy
  end
end
