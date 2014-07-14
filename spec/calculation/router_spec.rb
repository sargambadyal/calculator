require 'spec_helper'

describe Router do
  let(:router){
    Router.new
  }
  it 'should return 5 for "add 5" ' do
    expect(router.result(["add",5])).to eq(5)
  end

  it 'should return 25 for "sqr 5" ' do
    expect(router.result(["sqr",5])).to eq(25)
  end

  context "Exit Check" do
    it 'should check if Process receives exit' do
      expect(Process).to receive(:exit)
      router.exit
    end
  end
end