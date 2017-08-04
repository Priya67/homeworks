class Queue

  def initialize
    @array = []
  end
  def enqueue(e1)
    @array << e1
  end

  def dequeue
    puts "Array is nil" if @array.empty?
    @array.shift if @array!=nil?
  end

  def show
    # @array.each { |e| puts "#{e}" }
    @ivar.dup
  end
end
