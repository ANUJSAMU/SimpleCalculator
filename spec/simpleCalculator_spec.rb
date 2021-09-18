require 'simpleCalculator'

describe 'SimpleCalculator' do

    context 'When testing the SimpleCalculator class' do 

        before(:each) do
            numbersList = [80,20,10]
            @calc = SimpleCalculator.new(numbersList)
        end
    
        it 'adds two numbers' do       
            output = @calc.add
            expect(output).to eq(110)
        end

        it 'substract two numbers' do
            output = @calc.substract
            expect(output).to eq(50)
        end


        it 'multiply two numbers' do
            output = @calc.multiply
            expect(output).to eq(16000)
        end

        it 'divide two numbers' do
            output = @calc.divide
            expect(output).to eq(0.4)
        end
    end

    context 'Datatype Validation' do 
    
        it 'should not be string' do  
            numbersList = ['Apple', 'Mango']
            @calc = SimpleCalculator.new(numbersList)     
            output = @calc.checkItsNumber
            expect(output).to match('Please enter Numeric values')
        end

        it 'should be numeric' do  
            numbersList = [5,19.87]
            @calc = SimpleCalculator.new(numbersList)     
            output = @calc.checkItsNumber
            expect(output).to be_truthy
        end

         it 'should not be nil' do  
            numbersList = [nil, '']
            @calc = SimpleCalculator.new(numbersList)     
            output = @calc.checkItsNumber
            expect(output).to match('Please enter Numeric values')
        end

       
    end

end