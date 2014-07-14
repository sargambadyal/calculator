require 'spec_helper'

describe 'AddCommand' do

  let(:calculator) { Calculator.new }
  let(:command) { AddCommand.new(calculator, 5)}

  context '#perform' do

    it 'should call calculator + function' do
      expect(calculator).to receive(:+)
      command.perform
    end

    it 'should return value as 5' do
      expect(command.perform).to eq(5.0)
    end
  end


end