class Node
  attr_accessor :next, :value

  def initialize(value)
    @value = value
  end

  def inspect
    { @value => @next }
  end
end



class LinkedList
  include Enumerable

  def <<(value)
    if @head
      tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def tail
    item = @head

    return item if item.next.nil?
    return item if item.next.nil? while (item = item.next)
  end

  def inspect
    [@head].inspect
  end

  def each(&block)
    if block_given?
      item = @head
      block.call(item.value)
      block.call(item.value) while (item = item.next)
    else
      to_enum(:each)
    end
  end
end