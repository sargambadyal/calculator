#Manages the Input / Output
class InputOutput

  def initialize
    @calculator = Calculator.new
  end


  def output
    parser = Parser.new(@calculator)
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
