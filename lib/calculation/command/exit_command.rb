# Exits the process
class ExitCommand < Command
  def initialize (commands_history, calculator, operand)
    super commands_history, calculator, operand
  end

  def execute
    Process.exit
  end

  private
  def add_to_history
  end

end