#Invokes the calculator operations and passes the output to parser
class Router
  def initialize
    @calculator = Calculator.new
  end

  def result input
    case input[0]
      when 'add'
        @calculator + (input[1])
      when 'sub'
        @calculator - (input[1])
      when 'mul'
        @calculator * (input[1])
      when 'div'
        @calculator / (input[1])
      when 'cancel'
        return @calculator.reset()
      when 'abs'
        return @calculator.abs(input[1])
      when 'neg'
        return @calculator.neg(input[1])
      when 'sqr'
        return @calculator.sqr(input[1])
      when 'sqrt'
        return @calculator.sqrt(input[1])
      when 'cube'
        return @calculator.cube(input[1])
      when 'cubert'
        return @calculator.cubert(input[1])
      when 'exit'
        exit
      else
        return "Incorrect command"
    end
  end

private
  def exit
    Process.exit
  end

end

