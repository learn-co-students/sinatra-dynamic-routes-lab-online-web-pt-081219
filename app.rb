require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
  end

  get '/square/:number' do 
    @solution = params[:number].to_i ** 2
    @solution.to_s
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = ""
    @num.times {@phrase << params[:phrase]}
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    case params[:operation]
    when "add"
      @solution = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @solution = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @solution = params[:number1].to_i / params[:number2].to_i
    end
    @solution.to_s
  end

end