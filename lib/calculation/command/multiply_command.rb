#Performs multiplication
class MultiplyCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history,calculator, operand
  end

  def execute
    @calculator.* @operand
  end

end