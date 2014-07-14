#Parses the input and delegates to calculator
class Parser
  def initialize
    @router = Router.new
  end

  def parse input
    input = input.split(" ")
   #  operator = input[0]
   #  operand = input[1].to_f
   #  operation = Application.new(operator,operand)
   # # why will parser contain an instance variable called operation
   #  #
   [input[0], input[1].to_f]
  end

  def operation input
    parsed_input = parse input
    @router.result parsed_input
  end

end