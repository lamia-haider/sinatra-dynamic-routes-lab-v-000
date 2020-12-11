require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
    res = params[:number].to_i * params[:number].to_i
    res.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    string = "#{@phrase}" * params[:number].to_i * " "
    string
    
  end

end
