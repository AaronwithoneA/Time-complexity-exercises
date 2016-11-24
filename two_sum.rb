# O(n^2)

def bad_two_sum?(array, target_sum)

  (0...array.length).each do |i|
    (i + 1...array.length).each do |j|
      return true if array[i] + array[j] == target_sum
    end
  end

  false
end

# O(nlogn)
def okay_two_sum?(array, target_sum)

  sorted = array.sort
  sorted.each do |el|
    return true if (sorted - [el]).bsearch {|el2| el2 == target_sum - el}
  end
  false
end

# O(n)
def pair_sum?(array, target_sum)
  hash = Hash.new
  array.each do |el|
    hash[el] = target_sum - el
  end

  hash.values.each do |el|
    return true if hash.has_key?(el)
  end

  false
end









arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10)
