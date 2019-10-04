#random
x = 10
nums = []
puts "Random:"

def random(x, nums)
  x.times do |i|
    r = rand(0..100)
    nums.push(r)
  end
  print nums, "\n"
end
puts random(x, nums)

sort = nums.sort

#median
x = 10
nums = []
puts "Median:"
def random(x, nums)
  x.times do |i|
    r = rand(0..100)
    nums.push(r)
  end
  print nums, "\n"
end
puts random(x, nums)

def median(nums)
  sort = nums.sort
  print sort, "\n"
  if sort.size % 2 == 1
    # odd length lists
    return sort[sort.size / 2] # 3 / 2 = 1 (since both are integers)
  else sort.size % 2 == 0
    # even length lists
    return (sort[sort.size / 2] + sort[(sort.size / 2) - 1]) / 2.0
  end
end
puts median(nums)

#mode
x = 30
nums = []
puts "Mode:"
def random(x, nums)
  x.times do |i|
    r = rand(0..100)
    nums.push(r)
  end
  print nums, "\n"
end
puts random(x, nums)

sort = nums.sort

print sort, "\n"

  #frequency
count = 1
frequency = []
mode = "There is no mode."
sort.size.times do |i|
  if sort[i+1] == sort[i]
    count = count + 1
    frequency.push(count)
    frequency.size.times do |i|
      if i = frequency.max
        mode = sort[i]
      end
    end
  elsif sort[i+1] != sort[i]
    count = 1
    frequency.push(count)
  end
end
puts "Mode = #{mode}"
puts "\n"

  #actual
mode = "There is no mode."
sort.size.times do |i|
  if sort[i+1] == sort[i]
    mode = sort[i]
  end
end
puts "Mode = #{mode}"
puts "\n"

#standard deviation
x = 10
nums = []
puts "Standard Deviation:"

def random(x, nums)
  x.times do |i|
    r = rand(0..100)
    nums.push(r)
  end
  print nums, "\n"
end
puts random(x, nums)

sort = nums.sort

print sort, "\n"
sum = 0
sort.each do |i|
  sum = (sum + i).to_f
end
puts "Count = #{sort.size}", "\n"
puts "Sum = #{sum}", "\n"
mean = (sum/sort.size).to_f
puts "Mean = #{mean}", "\n"
difference_squared_sum = 0
differences = []
differences_squared = []
sort.each do |i|
  difference = i - mean
  differences.push(difference)
  difference_squared = difference * difference
  differences_squared.push(difference_squared)
  difference_squared_sum = (difference_squared_sum + difference_squared).to_f
end
puts "Differences = #{differences}", "\n"
puts "Differences^2 = #{differences_squared}", "\n"
puts "Sum of Differences^2 = #{difference_squared_sum}", "\n"
variance = (difference_squared_sum/sort.size).to_f
puts "Variance = #{variance}", "\n"
standard_deviation = Math.sqrt(variance)
puts "Standard Deviation = #{standard_deviation}"
puts "\n"
