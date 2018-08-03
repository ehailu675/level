require 'bundler'
Bundler.require
require_relative 'models/questions'
require_relative 'models/team'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end
 
 get '/basketball' do
  erb :basketball
 end 
 
 
  get '/soccer' do
  erb :soccer
 end 
 
 get '/tennis' do
  erb :tennis
 end 
 
  get '/howtohelp' do
  erb :howtohelp
 end 

  get '/quiz' do
  erb :quiz
 end 
 
  get '/team.erb' do
  erb :team
 end 
 
 
   get '/indiv.erb' do
  erb :indiv
 end 
 







post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @indivi = individualquiz(@total)
   if @indivi == "track"
     erb :xc_output
   elsif @indivi == "gym"
     erb :gymnasticsoutput
   elsif @indivi == "tennisoutput"
     erb :tennisoutput
  end
end






post  '/res' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   @team = teamquiz(@total)
   if @team == "basketball"
     erb :basketballoutput
   elsif @team == "soccer"
    erb :socceroutput
   
end


end
end

