#Performs the Cube
class CubeCommand < Command
  def initialize commands_history, calculator, operand
    super commands_history,calculator, operand
  end

  def execute
    @calculator.cube
  end
end