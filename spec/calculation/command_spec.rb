require 'spec_helper'

describe 'Command' do

  context 'Not added to command history' do

    [ExitCommand, CancelCommand, NilCommand, RepeatCommand].each do |class_name|

      context 'commands history' do
        let(:commands_history) { CommandsHistory.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new(commands_history, calculator, 2) }
        it 'should not add command to commands history' do
          expect(command.commands_history.size).to eq(0)
        end
      end

    end

  end

  context 'Added to command history' do

    [AddCommand, SubtractCommand, MultiplyCommand, DivideCommand, SquareCommand, SquareRootCommand, CubeCommand, CubeRootCommand, AbsoluteCommand, NegationCommand].each do |class_name|

      context 'commands history' do
        let(:commands_history) { CommandsHistory.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new(commands_history, calculator, 2) }
        it 'should not add command to commands history' do
          expect(command.commands_history.commands).to eq([command])
        end
      end

    end

  end


end