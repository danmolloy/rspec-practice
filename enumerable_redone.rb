module Enumerable

  def my_each
    p self
    if self.class == "Hash"
      for key in self.keys
        item = self[key]
        yield(key, item)
      end
    else
      for i in self
        yield(i)
      end
    end
    return self
  end

  def my_each_with_index
    p self
    index = 0
    self.my_each do |item|
      yield(item, index)
      index += 1
    end
    return self
  end

  def my_select
    p self
    new_array = []
    self.my_each do |item|
      new_array << item if yield(item) == true
    end
    return new_array
  end

  def my_all?
    p self
    result = true
    self.my_each do |item|
      if block_given?
        item_result = yield(item)
      else
        item_result = item
      end
      if !item_result
        result = false
      end
    end
    return result
  end

  def my_any?
    p self
    result = false
    self.my_each do |item|
      if block_given?
        item_result = yield(item)
      else
        item_result = item
      end
      if item_result
        result = true
        return result
      end
    end
    return result
  end

  def my_none?
    p self
    result = true
    self.my_each do |item|
      if block_given?
        item_result = yield(item)
      else
        item_result = item
      end
      if item_result
        result = false
        return result
      end
    end
    return result
  end

  def my_count(arg=nil)
    if arg == nil && !block_given?
      count = 0
      self.my_each {|i| count += 1}
      return count

    elsif arg == nil && block_given?
      count = 0
      self.my_each do |item|
        if yield(item) == true
          count += 1
        end
      end
      return count

    elsif arg != nil && !block_given?
      count = 0
      self.my_each {|item| count += 1 if item == arg}
      return count

    elsif arg != nil && block_given?
      puts "This method cannot take both an argument and a block!"
    end
  end

  def my_map
    new_array = []
    self.my_each do |item|
      new_array << yield(item)
    end
    return new_array
  end

  def my_inject(initial=nil)
    collection = self.to_a
    if initial == nil
      collector = collection.shift
    else
      collector = initial
    end

    collection.my_each do |item|
      collector = yield(collector, item)
    end
    return collector
  end


end
