require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :root
    end

    get '/new' do

      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate[:name]], params[:pirate[:weight]], params[:pirate[:height]])

      erb :show
    end

  end
end
