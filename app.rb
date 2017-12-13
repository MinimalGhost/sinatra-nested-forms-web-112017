require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      #{}"Welcome to the Nested Forms Lab! let's navigate to the '/new'"
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])
      @ship01 = Ship.new(params[:pirate][:ships][0])
      @ship02 = Ship.new(params[:pirate][:ships][1])

      erb :'/pirates/show'
    end
  end
end
