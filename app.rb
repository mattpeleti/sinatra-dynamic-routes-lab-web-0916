require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name].reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    squared_num = (num ** 2).to_s
  end

  get "/say/:number/:phrase" do
    n = params[:number].to_i
    phrase = params[:phrase]
    string = ""
    n.times do
      string += "#{phrase}\n"
    end
    string
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    string = "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/:operation/:number1/:number2" do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = ""
    if @oper == "add"
      @result = "#{@num1 + @num2}"
    elsif @oper == "subtract"
      @result = "#{@num1 - @num2}"
    elsif @oper == "multiply"
      @result = "#{@num1 * @num2}"
    elsif @oper == "divide"
      @result = "#{@num1 / @num2}"
    else
      @result = "Not a valid operation"
    end
    @result
  end
end
