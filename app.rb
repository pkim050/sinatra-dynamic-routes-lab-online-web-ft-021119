require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number *= @number
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @total = @phrase
    @number -= 1
    @number.times do
      @total += " #{@phrase}"
    end
    "#{@total}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @total = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@total}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @total = 0
    @total = @number1 + @number2 if @operation == "add"
    @total = @number1 - @number2 if @operation == "subtract"
    @total = @number1 * @number2 if @operation == "multiply"
    @total = @number1 / @number2 if @operation == "divide"
    "#{@total}"
  end
end
