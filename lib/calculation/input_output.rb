#Manages the Input / Output
class InputOutput

  def initialize
    @calculator = Calculator.new
    @commands_history = CommandsHistory.new
  end


  def output
    parser = Parser.new(@calculator,@commands_history)
    command = parser.parse(input)
    Kernel.puts command.perform
  end

  def console
    while true
      output
    end
  end

  private
  def input
    Kernel.gets
  end

end
