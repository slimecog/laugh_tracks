class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :'dashboard'
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials  = Special.all
    erb :'comedians/index'
  end
end
