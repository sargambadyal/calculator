require 'spec_helper'

describe Calculator do

  context "operations" do
    context "Addition" do
      it 'should add 5 ' do
        calculator = Calculator.new()
        expect(calculator.+(5)).to eq(5)
      end

      it 'should add 5 to the existing number 4 ' do
        calculator = Calculator.new(4)
       expect(calculator.+(5)).to eq(9)
      end

    end
    context "Multiplication" do
      it 'should multiply 4 ' do
        calculator = Calculator.new()
        expect(calculator.*(5)).to eq(0)
      end

      it 'should multiply 5 to the existing number 4 ' do
        calculator = Calculator.new(4)
        expect(calculator.*(5)).to eq(20)
      end

    end

    context "Division" do
      it 'should divide 4 ' do
        calculator = Calculator.new()
        expect(calculator./(5)).to eq(0)
      end

      it 'should divide 5 to the existing number 20 ' do
        calculator = Calculator.new(4)
        expect(calculator./(5)).to eq(0)
      end

      context "Divide By Zero Exception" do

        it 'should not raise divide by zero exception' do
          calculator = Calculator.new()
          expect {
            calculator./(0)
          }.to_not raise_exception
        end
      end

      context "Advanced operations" do

        context "Absolute value" do
          it 'should be 2.0 for input -2.0'do
            calculator = Calculator.new(-2.0)
            expect(calculator.abs).to eq(2.0)
          end
        end

        context "NegationCommand" do
          it 'should be 2.0 for input -2.0'do
            calculator = Calculator.new(2.0)
            expect(calculator.neg).to eq(-2.0)
          end
        end

        context "Square Root" do
          it 'should be 2.0 for input 4.0'do
            calculator = Calculator.new(4.0)
            expect(calculator.sqrt).to eq(2.0)
          end

          it 'should not throw exception for -1' do
            calculator = Calculator.new(-1)
            expect{calculator.sqrt}.to_not raise_error
          end


        end

        context "Square" do
          it 'should be 4.0 for input 2.0'do
            calculator = Calculator.new(2.0)
            expect(calculator.sqr).to eq(4.0)
          end
        end


        context "Cube" do
          it 'should be 8.0 for input 2.0'do
            calculator = Calculator.new(2.0)
            expect(calculator.cube).to eq(8.0)
          end
        end

        context "Cube Root" do
          it 'should be 2.0 for input 8.0'do
            calculator = Calculator.new(8.0)
            expect(calculator.cubert).to eq(2.0)
          end
        end

      end

    end

    context "reset" do
      it 'should reset ' do
        calculator = Calculator.new()
        expect(calculator.reset).to eq(0)
      end

    end
  end
end