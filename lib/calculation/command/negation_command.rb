#Performs the negation
class NegationCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history, calculator, operand
  end

  def execute
    @calculator.neg
  end

end