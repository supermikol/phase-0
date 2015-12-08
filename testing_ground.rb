class Queue
  def initialize
    @array, @head, @tail = [], 0, -1
  end

  def pushTail value
    @array[@tail += 1] = value
    p @array
    @isEmpty
  end

  def pullHead
    if !@isEmpty
      @array[@head].tap { |value|
        @array[@head] = nil
        @head += 1
      }
      p @array
    end
  end

  def isEmpty
    puts 'isEmpty called'
    @tail < @head
  end
end


testqueue = Queue.new
testqueue.pushTail("ho")
testqueue.pushTail("ho")
testqueue.pushTail("ho")
testqueue.pullHead

testqueue.pullHead
