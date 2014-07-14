#Invokes the calculator operations and passes the output to parser
class Router
  def initialize
    @calculator = Calculator.new
    @operations_history = OperationsHistory.new
  end

  def result operation
    operator = operation.operator
    operand = operation.operand
    @operations_history.push(operation) unless operator == "repeat"
    case operator
      when 'add'
        @calculator + (operand)
      when 'sub'
        @calculator - (operand)
      when 'mul'
        @calculator * (operand)
      when 'div'
        @calculator / (operand)
      when 'cancel'
        return @calculator.reset()
      when 'abs'
        return @calculator.abs(operand)
      when 'neg'
        return @calculator.neg(operand)
      when 'sqr'
        return @calculator.sqr(operand)
      when 'sqrt'
        return @calculator.sqrt(operand)
      when 'cube'
        return @calculator.cube(operand)
      when 'cubert'
        return @calculator.cubert(operand)

      when 'repeat'
        repeat (operand)
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

  def repeat counter
    operations = @operations_history.retrieve counter
    result_val =0
    operations.each do |operation|
      result_val = result operation
    end
    return result_val
  end



end

