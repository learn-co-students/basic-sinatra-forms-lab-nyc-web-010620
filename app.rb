require 'sinatra/base'

class App < Sinatra::Base
   # Create a route that responds to a GET request at /newteam
   # this is a read method 
   get '/newteam' do 
      erb :newteam 
   end 

   # this is a create method 
   post '/team' do 
      @name = params[:name]
      @coach = params[:coach]
      @pg = params[:pg]
      @sg = params[:sg]
      @pf = params[:pf]
      @sf = params[:sf]
      @c = params[:c]
      erb :team
   end 
end
