#run application
require_relative 'calculation'
class Application
  def initialize
    puts "Starting to Accept your Inputs"
    input = InputOutput.new
    input.console
  end
end

#Application.new