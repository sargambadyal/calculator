#Performs the Square Root
class SquareRootCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history, calculator, operand
  end

  def execute
    @calculator.sqrt
  end
end