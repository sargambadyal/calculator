require 'spec_helper'

describe 'CommandsHistory' do

  let(:calculator) {Calculator.new}
  let(:commands_history) { CommandsHistory.new }
  let(:command) {AddCommand.new(commands_history,calculator, 5.0)}
  it 'should be able to store commands history' do
      commands_history.push(command)
      expect(commands_history.commands).to eq([command])
  end

  it "should be retrieve last n commands" do
    commands_history.push(command)
    command2 = SubtractCommand.new(commands_history,calculator,2.0)
    command3 = AddCommand.new(commands_history,calculator,2.0)
    commands_history.push(command2)
    commands_history.push(command3)
    expect(commands_history.retrieve 2).to eq([command2,command3])
  end
end