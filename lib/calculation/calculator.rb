#Performs arithmetic operations
class Calculator
  def initialize initial_state=0
    @state=initial_state
  end

    def + value
      @state = value + @state
    end

    def - value
      @state = @state - value
    end

    def * value
      @state = value * @state
    end

    def / value
      begin
        if value!=0
         @state = @state / value
        end
      rescue
        puts 'Cannot Divide by zero'
      end
    end

    def abs value
      @state = value.abs
    end


    def neg value
     @state = -(value)
    end

    def sqrt value
      begin
        @state = Math.sqrt value
      rescue
        puts "Returns Complex number"
      end
    end

    def sqr value
      @state = value ** 2
    end

    def cube value
      @state = value ** 3
    end

    def cubert value
      @state = Math.cbrt value
    end

    def reset
      @state = 0
    end

  end
