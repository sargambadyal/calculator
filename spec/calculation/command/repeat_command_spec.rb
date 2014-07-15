require 'spec_helper'

describe 'RepeatCommand' do

  context 'Command' do
    let(:commands_history) { CommandsHistory.new }
    let(:calculator) { Calculator.new }
    let(:command) { RepeatCommand.new(commands_history, calculator, 2) }

    let(:command_history_with_data) do
      ch = CommandsHistory.new
      AddCommand.new(ch, calculator,5)
      SubtractCommand.new(ch, calculator,3)
      AddCommand.new(ch, calculator, 7)
      ch
    end

    context '#execute' do
      it 'should repeat last n commands' do
        repeat_command = RepeatCommand.new(command_history_with_data, calculator, 2)
        expect(repeat_command.execute).to eq(4)
      end

      it 'raise an alert when number of commands are less than specified' do
        count =4
        repeat_command = RepeatCommand.new(command_history_with_data, calculator, count)
        expect(repeat_command.execute).to eq("Commands History do not have #{count} commands.")

      end


    end

    context 'commands history' do
      it 'should not add command to commands history' do
        expect(command.commands_history.size).to eq(0)
      end
    end
  end

end