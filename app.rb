require 'sinatra'
require_relative './lib/player.rb'
enable :sessions
get "/" do
  erb :index

end

get '/cats' do
  "<div style='border :dashed red; width:50%; margin:0 auto'>
    <img src='http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png' />
  </div>"
end

get '/named' do
  @name = params["name"]
  p params
  erb :named
end

post "/show-name" do
  session[:player]= Player.new(params[:name],params[:family])
  redirect '/show-name'
end

get '/show-name' do
  erb :fullName
end
