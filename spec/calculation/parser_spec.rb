require 'spec_helper'

describe Parser do


  context "parsing" do

    it 'should be [add,5] for "Add 5"' do
      expect(Parser.new.parse("add 5")).to eq(["add", 5])
    end
  end
  context 'Result calculation' do
    it 'should return 5 for add 5 with initial state 0' do
      expect(Parser.new.operation("add 5")).to eq(5.0)
    end
  end
end