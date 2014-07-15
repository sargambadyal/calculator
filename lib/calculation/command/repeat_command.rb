class RepeatCommand < Command
  def initialize (commands_history,calculator, operand)
    super commands_history,calculator, operand
  end

  def execute
    #return "Commands History do not have #{@operand.to_i} commands." if @operand.to_i > @commands_history.size
    result =0
    @commands_history.retrieve(@operand.to_i).each do |command|
      result = command.execute
    end
    result
  end

  private
  def add_to_history
  end
end