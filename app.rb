require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    number = number * number
    "#{number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    string = params[:phrase] * number
    "#{string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
    "#{string}"
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    case op
    when 'add'
      out = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      out = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      out = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      out = params[:number1].to_i / params[:number2].to_i
end
out = out.to_s
      "#{out}"
    end
end
