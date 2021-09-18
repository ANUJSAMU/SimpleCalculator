class SimpleCalculator

    def initialize(workingArray)
        @workingArray = workingArray
    end

    def checkItsNumber
        check = @workingArray.all?{ |num| num.is_a?(Numeric)}? true : 'Please enter Numeric values'
    end

    def add
        result = @workingArray.sum
    end

    def substract    
        dif = @workingArray[0]
        @workingArray.drop(1).each{|num| dif -= num}
        result = dif
    end

    def multiply
        mult = @workingArray[0]
        @workingArray.drop(1).each{|num| mult *= num}
        result = mult
    end

    def divide
        div = @workingArray[0].to_f
        @workingArray.drop(1).each{|num| div /= num}
        result = div
    end
end