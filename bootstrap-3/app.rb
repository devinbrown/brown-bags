require 'rubygems'
require 'sinatra'
require 'slim'

get '/ussr' do
  slim :index
end