require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @add =  @num1 + @num2
    @subtract = @num1 - @num2
    @multiply = @num1 * @num2
    @divide = @num1 / @num2

    if @operation == "add"
      "#{@add}"
    elsif @operation == "subtract"
      "#{@subtract}"
    elsif @operation == "multiply"
      "#{@multiply}"
    elsif @operation == "divide"
      "#{@divide}"
    else
      "Operation doesn't exist"
    end
  end
end
