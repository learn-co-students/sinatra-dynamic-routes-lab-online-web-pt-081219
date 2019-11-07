require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "This is working :)"
  end

  get '/reversename/:name' do
    name = params[:name].to_s.reverse
    "#{name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    output = ''

    num.times do
      output << phrase
    end
    output
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation].to_s
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = []

    if op == "multiply"
      result << (num1 * num2).to_s
    elsif op == "divide"
      result << (num1 / num2).to_s
    elsif op == "add"
      result << (num1 + num2).to_s
    elsif op == "subtract"
      result << (num1 - num2).to_s
    end
    result
  end

end