require 'spec_helper'

describe 'OperationsHistory' do

  let(:operation) {Operation.new("add", 5.0)}
  it 'should be able to store operations history' do
      operations_history = OperationsHistory.new
      operations_history.push(operation)
      expect(operations_history.operations).to eq([operation])
  end

  it "should be retrieve last n operations " do
    operations_history = OperationsHistory.new
    operations_history.push(operation)
    operation2 = Operation.new("sub",2.0)
    operation3 = Operation.new("mul",2.0)
    operations_history.push(operation2)
    operations_history.push(operation3)
    expect(operations_history.retrieve 2).to eq([operation2,operation3])
  end
end