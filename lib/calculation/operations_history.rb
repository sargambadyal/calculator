class OperationsHistory
  attr_reader :operations
  def initialize
    @operations= []
  end

  def push operation
    @operations << operation
  end

  def retrieve counter
    @operations.last counter
  end

end