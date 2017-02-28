class Calculator

  def initialize()

  end


    def doAddOperation(x, y)
      # p "added"
      result = x + y
      p "add #{x} to #{y} gives #{(result).to_s}"
    end

    def doMultOperation(x, y)
      result = x * y
      p "add #{x} to #{y} gives #{(result).to_s}"
    end

    def doSubOperation(x, y)
      result = x - y
      p "add #{x} to #{y} gives #{(result).to_s}"
    end

    def doDivOperation(x, y)
      result = x/y
      p "add #{x} to #{y} gives #{(result).to_s}"
    end

    def start
      p "What calculation would you like to do? (add, sub, mult, div)"
      @operations = gets.chomp
      if (@operations == "add" || @operations == "sub" || @operations == "mult" || @operations == "div")
          p "What is number 1?"
          @num1 = gets.chomp.to_i
          p "What is number 2?"
          @num2 = gets.chomp.to_i
        else
          p "No math operation selected"
          exit
        end

  case @operations
    when "add"
       doAddOperation(@num1, @num2)
    when "sub"
      doSubOperation(@num1, @num2)
    when "mult"
      doMultOperation(@num1, @num2)
    when "div"
      doDivOperation(@num1, @num2)
    else
      p "No math operation selected"
  end


  end

end


calc = Calculator.new()
calc.start
