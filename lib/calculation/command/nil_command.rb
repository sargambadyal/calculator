# command to process unmatched parameters
class NilCommand < Command

  def initialize commands_history, calculator, operand
    super commands_history, calculator, operand
  end

  def execute
    "Unable to process"
  end

  private
  def add_to_history
  end

end