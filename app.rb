require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end
    "#{result.join('\n')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = []
    params.each do |param|
      result << param[1]
    end
    "#{result.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    #add multiply subtract divide
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
      when 'add'
        "#{@num1 + @num2}"
      when 'multiply'
        "#{@num1 * @num2}"
      when 'subtract'
        "#{@num1 - @num2}"
      when 'divide'
        "#{@num1 / @num2}"
      else
        'Sorry that\'s not a valid operation.'
    end

  end
end