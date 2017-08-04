class Stack
  def initialize
    @ivar = []
  end

  def add(e1)
    @ivar << e1
  end

  def remove
    if @ivar.empty?
      raise "Array is nil"
    else
      @ivar.pop
    end
  end

  def show
    @ivar.dup
  end

end
