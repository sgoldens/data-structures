# From wikipedia: https://en.wikibooks.org/wiki/Algorithm_Implementation/Sorting/Merge_sort#Ruby

def mergesort(list)
  return list if list.size <= 1
  mid   = list.size / 2
  left  = list[0, mid]
  right = list[mid, list.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  p sorted.concat(left).concat(right)
end

test = Array.new(10) { |i| rand(100) }
p mergesort(test)
p mergesort(test)