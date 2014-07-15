require 'spec_helper'

describe Parser do
  context "#parse" do
    let(:calculator) { Calculator.new }
    let(:commands_history) {CommandsHistory.new}
    let(:parser) { Parser.new(calculator, commands_history) }

    it 'should return correct instance of AddCommand' do
      input_string = "add 5"
      expect(parser.parse(input_string)).to be_an_instance_of(AddCommand)
    end

    it 'should return correct instance of SubtractCommand' do
      input_string = "sub 5"
      expect(parser.parse(input_string)).to be_an_instance_of(SubtractCommand)
    end

    it 'should return correct instance of RepeatCommand' do
      input_string = "repeat 2"
      expect(parser.parse(input_string)).to be_an_instance_of(RepeatCommand)
    end




  end
end