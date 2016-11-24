#phase 1: O (n^2)
# def my_min(array)
#   smallest = 0
#   array.each_with_index do |el1, idx1|
#     array.each_with_index do |el2, idx2|
#       next if idx2 == idx1
#       if el1 < el2 && el1 < smallest
#         smallest = el1
#       end
#     end
#   end
#
#   smallest
# end
#
# #phase 2: O (n)

# def my_min(array)
#
#   smallest = array.max
#
#   array.each do |el|
#     if el < smallest
#       smallest = el
#     end
#   end
#
#   smallest
# end
#
#
# #phase 1: O (n^3)


#Phase 2
def largest_cont_subsum(array)
  largest = 0
  array.each_with_index do |el, idx|
    current_largest = 0
    new_current_largest = current_largest += el

    if new_current_largest < current_largest
      current_largest = 0
    else
      current_largest = new_current_largest
      largest = new_current_largest
    end
  end
  largest
end

  # starting_index = nil
  # current_index = 0
  # largest_sum = 0
  # sum=0
  # indices = []
  #
  # while current_index + 1 <= array.length
  #   current_sum = array[current_index] + array[current_index + 1]
  #   if current_sum < largest_sum
  #     starting_index = current_index if starting_index.nil?
  #     indices << [starting_index, current_index + 1]
  #   else
  #     sum += current_sum
  #     if sum > largest_sum
  #       largest_sum = sum
  #     end
  #   end
  #   current_index += 1
  # end
  #
  #
  # indices

#end

list = [ 0, 3, -1, 5, 4, -5, 10, 1, 90 ]
p largest_cont_subsum(list)




# start_idx = nil
# largest = 0
#
# current_index = 0
#
# while current_index <= array.length
#   if array[current_index] + array[current_index + 1] < largest
#     start_index = current_index
