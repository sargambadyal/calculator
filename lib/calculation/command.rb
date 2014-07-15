# initialize command object and add it to history
class Command
  attr_reader :commands_history
  def initialize (commands_history, calculator, operand=nil, audit_enabled=true)
    @commands_history = commands_history
    @calculator = calculator
    @operand = operand
    add_to_history if audit_enabled
  end

  private
  def add_to_history
    @commands_history.push(self)
  end
end