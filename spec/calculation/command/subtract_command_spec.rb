require 'spec_helper'

describe 'SubtractCommand' do
  let(:commands_history) { CommandsHistory.new }
  let(:calculator) { Calculator.new(10) }
  let(:command) { SubtractCommand.new(commands_history,calculator, 5)}

  context '#perform' do

    it 'should call calculator + function' do
      expect(calculator).to receive(:-)
      command.perform
    end

    it 'should return value as 5' do
      expect(command.perform).to eq(5.0)
    end
  end


end