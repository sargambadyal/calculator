#return the absolute value
class AbsoluteCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history, calculator, operand
  end

  def execute
    @calculator.abs
  end
end