require 'spec_helper'

describe Parser do
  context "#parse" do
    let(:calculator) { Calculator.new }
    let(:parser) { Parser.new(calculator) }

    it 'should return correct instance of AddCommnd' do
      input_string = "add 5"
      expect(parser.parse(input_string)).to be_an_instance_of(AddCommand)
    end


  end
end