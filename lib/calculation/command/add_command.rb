# command to perform addition
class AddCommand < Command

  def initialize calculator, operand
    super calculator, operand
  end

  def perform
    @calculator.+ @operand
  end

end