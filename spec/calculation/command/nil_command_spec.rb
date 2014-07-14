require 'spec_helper'

describe 'NilCommand' do
  let(:calculator) { Calculator.new }
  let(:command) { NilCommand.new}
  it "should return 'Unable to process'" do
    expect(command.perform).to eq('Unable to process')
  end
end