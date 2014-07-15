require 'spec_helper'


describe 'AddCommand' do
  context 'Command' do
    let(:commands_history) { CommandsHistory.new }
    let(:calculator) { Calculator.new }
    let(:command) { AddCommand.new(commands_history, calculator, 5) }

    context '#perform' do

      it 'should call calculator + function' do
        expect(calculator).to receive(:+)
        command.perform
      end

      it 'should return value as 5' do
        expect(command.perform).to eq(5.0)
      end
    end

    context 'commands history' do
      it 'should add command to commands history' do
        expect(command.commands_history.size).to eq(1)
      end

      it 'should not command to commands history' do
        expect(command.commands_history.size).to eq(1)
      end
    end
  end

end