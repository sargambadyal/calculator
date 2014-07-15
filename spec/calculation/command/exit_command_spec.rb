require 'spec_helper'

describe 'ExitCommand' do

  let(:commands_history) { CommandsHistory.new }
  let(:calculator) { Calculator.new }
  let(:command) { ExitCommand.new(commands_history, calculator, 0) }

  it 'should exit the process' do
    expect(Process).to receive(:exit)
    command.execute
  end
end