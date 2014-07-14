require 'spec_helper'

describe 'Operation' do

 context "Equality checks" do
       let(:operation) do
         Operation.new("add", 5.0)
       end
       it "should be equal for same object id" do
         expect(operation).to eq(operation)
       end

       it "should not be nil" do
         expect(operation).to_not eq(nil)
       end

       it "should not be equal for different type" do
         object = Object.new
         expect(operation).to_not eq(object)
       end

       it "should have same hash code" do
         operation1 = Operation.new("add", 5.0)
         operation2 = Operation.new("add", 5.0)
         expect(operation1.hash).to eq(operation2.hash)
       end

       it "symmetric property" do
         operation1 = Operation.new("add", 5.0)
         operation2 = Operation.new("add", 5.0)
         expect(operation1).to eq(operation2) and expect(operation2).to eq(operation1)
       end

       it "transitive property" do
         operation1 = Operation.new("add", 5.0)
         operation2 = Operation.new("add", 5.0)
         operation3 = Operation.new("add", 5.0)
         expect(operation1).to eq(operation2) and expect(operation2).to eq(operation3) and expect(operation3).to eq(operation1)
       end
 end
end