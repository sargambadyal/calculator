#Parses the input and returns correct command object
class Parser
  def initialize (calculator , commands_history)
    @calculator = calculator
    @commands_history = commands_history
  end

  def parse (input_string)
    operator, operand = input_string.split
    case operator
      when "add"
        AddCommand.new(@commands_history, @calculator, operand.to_f)

      when 'sub'
        SubtractCommand.new(@commands_history, @calculator, operand.to_f)
      # when 'mul'
      #   @calculator * (operand)
      # when 'div'
      #   @calculator / (operand)
      when 'cancel'
      CancelCommand.new(@commands_history,@calculator,operand)
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
      when 'repeat'
        RepeatCommand.new(@commands_history, @calculator, operand)
      when 'exit'
        ExitCommand.new(@commands_history, @calculator, operand)
      else
       NilCommand.new
    end
  end
end