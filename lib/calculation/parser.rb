#Parses the input and returns correct command object
class Parser
  def initialize calculator
    #@router = Router.new
    @calculator = calculator
  end

  def operation input
    parsed_input = parse input
    @router.result parsed_input
  end

  def parse input_string
    operator, operand = input_string.split
    case operator
      when "add"
        AddCommand.new(@calculator, operand.to_f)

      # when 'sub'
      #   @calculator - (operand)
      # when 'mul'
      #   @calculator * (operand)
      # when 'div'
      #   @calculator / (operand)
      # when 'cancel'
      #   return @calculator.reset()
      # when 'abs'
      #   return @calculator.abs(operand)
      # when 'neg'
      #   return @calculator.neg(operand)
      # when 'sqr'
      #   return @calculator.sqr(operand)
      # when 'sqrt'
      #   return @calculator.sqrt(operand)
      # when 'cube'
      #   return @calculator.cube(operand)
      # when 'cubert'
      #   return @calculator.cubert(operand)
      #
      # when 'repeat'
      #   repeat (operand)
      # when 'exit'
      #   exit
      else
       NilCommand.new
    end
  end
end