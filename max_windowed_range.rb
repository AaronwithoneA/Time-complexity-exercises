# def windowed_max_range(arr, w)
#   diffs = []
#
#   (0...arr.length).each do |i|
#     j = i + (w - 1)
#     break if j == arr.length
#     diffs << arr[j] - arr[i]
#   end
#   diffs.max
# end

#p windowed_max_range([1, 0, 2, 5, 4, 8], 2) ## 4, 8
#p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5

def windowed_max_range(arr, w)

  windows = []
  win = 2
  until win == w
    a = arr.each_cons(win).to_a
    windows << a

    win += 1
  end

  values = []

  windows.flatten(1).each do |array|
    sum = array.last - array.first
    values << sum
  end
  #p windows.flatten(1)
  p values.max
end


#p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6
