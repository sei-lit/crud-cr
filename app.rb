require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models'

get '/' do
    @medicine = Medicines.all
    erb:index
end

get "/item/create" do
    erb:new
end

post "/item/create" do
    Medicines.create(name: params[:name], amount: params[:amount])
    erb:new
end
