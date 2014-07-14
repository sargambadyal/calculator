# command to perform addition
class SubtractCommand < Command

  def initialize calculator, operand
    super calculator, operand
  end

  def perform
    @calculator.- @operand
  end

end