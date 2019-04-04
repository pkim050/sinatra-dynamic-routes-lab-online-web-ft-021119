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
    while @number > 0
      @phrase += @phrase
      @number -= 1
    end
    "#{@phrase}"
    #@number.times do
    #  "#{@phrase}"
    #end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #@total = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    #{}"#{@total}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    "#{@number1 + @number2}" if @operation == "add"
    "#{@number1 - @number2}" if @operation == "subtract"
    "#{@number1 * @number2}" if @operation == "multiply"
    "#{@number1 / @number2}" if @operation == "divide"
  end
end
