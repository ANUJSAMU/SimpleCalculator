require 'simpleCalculator'

describe 'SimpleCalculator' do
    
    it 'adds two numbers' do
        calc = SimpleCalculator.new
        output = calc.add(5,4)
        expect(output).to eq(9)
    end

    it 'substract two numbers' do
        calc = SimpleCalculator.new
        output = calc.substract(5,4)
        expect(output).to eq(1)
    end


    it 'multiply two numbers' do
        calc = SimpleCalculator.new
        output = calc.multiply(5,4)
        expect(output).to eq(20)
    end

    it 'divide two numbers' do
        calc = SimpleCalculator.new
        output = calc.divide(10,2)
        expect(output).to eq(5)
    end
end