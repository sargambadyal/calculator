class CommandsHistory
  attr_reader :commands
  def initialize
    @commands= []
  end

  def push command
    @commands << command
  end

  def retrieve count
    @commands.last count
  end

  def size
    @commands.count
  end

end