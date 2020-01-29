require 'sinatra/base'

class App < Sinatra::Base
   # Create a route that responds to a GET request at /newteam
   # when user goes to this path, they will get the form 
   get '/newteam' do 
      erb :newteam 
   end 

   # this is the corresponding route for our form; 
   # the name attribute from each input field from the form
   # corresponds to the key in the params hash for that data
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
