require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
  @reversename = params[:name].reverse
  return @reversename
end

  get '/square/:number' do 
    @squarenumber = (params[:number].to_i ** 2).to_s
    return @squarenumber
  end 
  
  
  get '/say/:number/:phrase' do 
  @numberphrase = ""
  
    params[:number].to_i.times do 
    @numberphrase = @numberphrase + params[:phrase]
  end 
  
 return @numberphrase
end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  
  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i


    case params[:operation]
    when 'add'
      sum = (number1 + number2).to_s 
    when 'subtract'
      difference = (number1 - number2).to_s 
    when 'multiply'
      product = (number1 * number2).to_s
    when 'divide'
      quotient = (number1 / number2).to_s 
    else 
      puts "error"
    end
  end
end