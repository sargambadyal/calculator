#Parses the input and returns correct command object
class Parser
  def initialize (calculator, commands_history)
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
      when 'mul'
        MultiplyCommand.new(@commands_history, @calculator, operand.to_f)
      when 'div'
        DivideCommand.new(@commands_history, @calculator, operand.to_f)
      when 'cancel'
        CancelCommand.new(@commands_history, @calculator, operand)
      when 'abs'
        AbsoluteCommand.new(@commands_history, @calculator, operand.to_f)
      when 'neg'
        NegationCommand.new(@commands_history, @calculator, operand.to_f)
      when 'sqr'
        SquareCommand.new(@commands_history, @calculator, operand.to_f)
      when 'sqrt'
        SquareRootCommand.new(@commands_history, @calculator, operand.to_f)
      when 'cube'
        CubeCommand.new(@commands_history, @calculator, operand.to_f)
      when 'cubert'
        CubeRootCommand.new(@commands_history, @calculator, operand.to_f)
      when 'repeat'
        RepeatCommand.new(@commands_history, @calculator, operand)
      when 'exit'
        ExitCommand.new(@commands_history, @calculator, operand)
      else
        NilCommand.new(@commands_history, @calculator, operand)
    end
  end
end