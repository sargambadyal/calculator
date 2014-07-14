# model operations in form of operator and operand
class Operation
  attr_reader :operand, :operator
  def initialize(operator, operand =nil)
    @operator = operator
    @operand = operand
  end

  def ==(other)
      return true if self.equal?(other)
      return false if other.nil?
      return false if other.class != self.class
      @operand == other.operand && @operator == other.operator
  end

  def hash
      37*(@operand.hash + @operator.hash)
  end

  def eql? other
    self == other
  end
end