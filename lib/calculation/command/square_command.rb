#performs the square
class SquareCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history,calculator, operand
  end

  def execute
    @calculator.sqr
  end
end