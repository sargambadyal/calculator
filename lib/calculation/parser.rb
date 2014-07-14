#Parses the input and delegates to calculator
class Parser
  def initialize
    @router = Router.new
  end


  def operation input
    parsed_input = parse input
    @router.result parsed_input
  end

  def parse input
    input = input.split
    Operation.new(input[0], input[1].to_f)
  end
end