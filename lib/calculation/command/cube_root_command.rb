#Perform the Cube Root
class CubeRootCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history, calculator, operand
  end

  def execute
    @calculator.cubert
  end
end