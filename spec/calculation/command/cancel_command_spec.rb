require 'spec_helper'

describe 'CancelCommand' do
  let(:commands_history) { CommandsHistory.new }
  let(:calculator) { Calculator.new }
  let(:command) { CancelCommand.new(commands_history, calculator, 0) }

  it 'should reset the state of calculator' do
    expect(command.execute).to eq(0)
  end
end