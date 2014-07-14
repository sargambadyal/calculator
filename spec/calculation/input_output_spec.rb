require 'spec_helper'

describe InputOutput do
  let(:io_operation) { InputOutput.new }

  context "Input Check" do
    it 'check whether input received in console' do
      expect(Kernel).to receive(:gets)
      io_operation.input
    end
  end


  context 'I/O check' do
    it 'should return 5 for add 5 with initial state 0' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(Kernel).to receive(:puts).with(5)
      io_operation.output
    end

    it 'should return 5 for add 5 with initial state 0' do
      allow(Kernel).to receive(:gets).and_return("lol")
      expect(Kernel).to receive(:puts).with("Unable to process")
      io_operation.output
    end

  end

  # end 'checking input acceptance in console' do
  # it' accepts input add 5' do
  #   allow(Kernel).to receive(:gets).and_return("add 5")
  #   expect(io_operation.console).to eq("add 5")
  # end
  # end
end