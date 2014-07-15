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


  def abs
    @state = @state.abs
  end

  def neg
    @state = -(@state)
  end

  def sqrt
    begin
      @state = Math.sqrt @state
    rescue
      puts "Returns Complex number"
    end
  end

  def sqr
    @state = @state ** 2
  end

  def cube
    @state = @state ** 3
  end

  def cubert
    @state = Math.cbrt @state

  end


  def reset
    @state = 0
  end

end
