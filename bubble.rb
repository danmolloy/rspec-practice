def bubble_sort(array)
  sorted = false
  
  while sorted == false
    sorted = true
    array.each_with_index do |current, index|
      break if index == array.length - 1
      if current > array[index+1]
        sorted = false
        array[index], array[index+1] = array[index+1], array[index]
      end
    end
  end
    
  return array
  
end

def bubble_sort_by(array)
  sorted = false
  
  while sorted == false
    sorted = true
    array.each_with_index do |current, index|
      break if index == array.length - 1
      comparison = yield(array[index], array[index+1])
      if comparison > 0
        sorted = false
        array[index], array[index+1] = array[index+1], array[index]
      end
    end
  end
    
  return array
  
end

#p bubble_sort([4,3,78,2,0,2,-1,12,398,0,0,199,-12, 3.4, 6.9, -1.4])

arr =  bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
end

p arr
