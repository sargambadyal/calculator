#Resets the calculator to state 0
class CancelCommand < Command
  def initialize (commands_history, calculator, operand)
    @calculator = calculator
  end

  def execute
   @calculator.reset
  end

  private
  def add_to_history
  end

end