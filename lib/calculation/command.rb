# initialize command object and add it to history
class Command
  attr_reader :commands_history, :operand
  def initialize (commands_history, calculator, operand=nil, history_enabled=true)
    @commands_history = commands_history
    @calculator = calculator
    @operand = operand
    add_to_history
  end

  def ==(other)
      return true if self.equal?(other)
      return false if other.nil?
      return false if other.class != self.class
      @operand== other.operand
  end

  def hash
      37*(@operand.hash)
  end

  def eql? other
    self == other
  end

  private
  def add_to_history
    @commands_history.push(self)
  end
end