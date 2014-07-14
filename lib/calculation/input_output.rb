#Manages the Input / Output
class InputOutput
  def initialize
    @parser = Parser.new
  end
  def input
    Kernel.gets
  end
  def output
    puts Kernel.puts @parser.operation input
  end

  def console
    while true
      #input
    output
    end
  end
end