require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/:puppy' do
    @name = params[:puppy.name]
    @breed = params[:puppy.breed]
    @age = params[:puppy.age]

    erb :display_puppy
  end
end
