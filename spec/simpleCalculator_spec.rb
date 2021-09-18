require 'simpleCalculator'

describe 'SimpleCalculator' do

    context 'When testing the SimpleCalculator class' do 

        before(:each) do
            @calc = SimpleCalculator.new(10,2)
        end
    
        it 'adds two numbers' do       
            output = @calc.add
            expect(output).to eq(12)
        end

        it 'substract two numbers' do
            output = @calc.substract
            expect(output).to eq(8)
        end


        it 'multiply two numbers' do
            output = @calc.multiply
            expect(output).to eq(20)
        end

        it 'divide two numbers' do
            output = @calc.divide
            expect(output).to eq(5)
        end
    end

end