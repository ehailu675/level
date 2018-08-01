require 'bundler'
Bundler.require
require_relative 'models/questions'

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

end