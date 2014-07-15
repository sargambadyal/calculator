require 'spec_helper'

describe Parser do
  context "#parse" do
    let(:calculator) { Calculator.new }
    let(:commands_history) { CommandsHistory.new }
    let(:parser) { Parser.new(calculator, commands_history) }

    it 'should return instance of AddCommand' do
      input_string = "add 5"
      expect(parser.parse(input_string)).to be_an_instance_of(AddCommand)
    end

    it 'should return instance of SubtractCommand' do
      input_string = "sub 5"
      expect(parser.parse(input_string)).to be_an_instance_of(SubtractCommand)
    end

    it 'should return instance of RepeatCommand' do
      input_string = "repeat 2"
      expect(parser.parse(input_string)).to be_an_instance_of(RepeatCommand)
    end

    it 'should return instance of ExitCommand' do
      input_string = "exit"
      expect(parser.parse(input_string)).to be_an_instance_of(ExitCommand)
    end

    it 'should return instance of CancelCommand' do
      input_string = "cancel"
      expect(parser.parse(input_string)).to be_an_instance_of(CancelCommand)
    end


  end
end