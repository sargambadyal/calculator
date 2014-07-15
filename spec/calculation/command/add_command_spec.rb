require 'spec_helper'


describe 'AddCommand' do
  context 'Command' do
    let(:commands_history) { CommandsHistory.new }
    let(:calculator) { Calculator.new }
    let(:command) { AddCommand.new(commands_history, calculator, 5) }

    context '#execute' do

      it 'should call calculator + function' do
        expect(calculator).to receive(:+)
        command.execute
      end

      it 'should return value as 5' do
        expect(command.execute).to eq(5.0)
      end
    end

    context 'commands history' do
      it 'should add command' do
        expect(commands_history.commands).to eq([command])
      end

      it 'should increase command history count by 1' do
        expect(command.commands_history.size).to eq(1)
      end
    end

  end

end