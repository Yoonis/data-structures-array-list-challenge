class ArrayList
  def new(size)
    @dynamic_arr = Array.new(size)
  end

  def add(element)
    @dynamic_arr.push(element)
    @dynamic_arr[-1]
  end

  def get(index)
    raise IndexError if index < 0 || index > @dynamic_arr.length - 1
    @dynamic_arr[index]
  end

  def set(index, element)
    raise IndexError if index < 0 || index > @dynamic_arr.length - 1
    @dynamic_arr[index] = element
    @dynamic_arr[index]
  end

  def length
    @dynamic_arr.length
  end

  def insert(index, element)
    raise IndexError if index < 0 || index > @dynamic_arr.length - 1
    @dynamic_arr.insert(index, element)
  end
end
