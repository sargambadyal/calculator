# Define command objects
class Command
  def initialize calculator, operand=nil
    @calculator = calculator
    @operand = operand
  end
end