# Problem 1 = do not have to look at everything in the list
  # no loops
  #list[x]


# Loop 1
def median(list)
  if list.size % 2 == 1
    # odd length lists
    return list[list.size / 2] # 3 / 2 = 1 (since both are integers)
  else list.size % 2 == 0
    # even length lists
    return (list[list.size / 2] + list[(list.size / 2) - 1]) / 2.0
  end

end

#            0  1  2
puts median([1, 2, 3]) #2
#            0  1  2  3
puts median([1, 2, 3, 4]) #2.5


# Loop 2
def starts_with?(list, number)
  if list[0] == number
    return true
  else
    return false
  end
end

puts starts_with?([1, 2, 3], 1) # true
puts starts_with?([1, 2, 3], 2) # false



# Problem 2 - Look at everything potentially once to solve the Problem


# Loop 3
def avg(list)
  total = 0
  list.each do |i|
    total += i # means the same thing as total = total + i
  end

  return total / list.size.to_f
end

puts avg([1, 2, 3]) #2


# Loop 4
def std_dev(list)
  total = 0
  list.each do |i|
    total += n
  end
  avg = total / list.size.to_f

  sum_of_squares = 0
  list.each do |i|
    term = (x - avg) * (x - avg) # or (x- avg)**2, but it's not as accurate
      sum_of_squares = sum_of_squares + term
  end

  return Math.sqrt(sum_of_squares / (list.size - 1))
end


# Loop 5
def list_has?(list, number)
  list.each do |i|
    if i == number
      return true
    end
  end

  return false
end

puts list_has?([1, 2, 3], 2) # true
puts list_has?([1, 2, 3], 5) # false



# Problem 3 - have to compare a value from a list against everything else in the list


# Loop 6
  #list is in any order- not sorted
def mode(list)

  max_count = 0
  modes = []
  list.each do |i| # looping through original list numbers

    count = 0
    list.each do |n| # to count how many i's exist in the list
      if i == n
        count += 1
      end
    end

    if count > max_count
      max_count = count
      modes = [i]
    elsif count == max_count
      if !modes.include?(i)
        modes.push(i)
      end
    end
  end

  return modes.sort
end

print mode([2, 4, 5, 4, 3, 4, 3, 3]) # [3, 4]
puts "\n"


# Loop 7
def is_increasing?(list)
  (list.size - 1).times do |i| # the (- 1) is used so that there is no error involved
    if list[i] >= list[i + 1]
      return false
    end
  end
  return true
end

puts is_increasing?([2, 3, 4]) # true
puts is_increasing?([3, 2, 4]) # false
puts is_increasing?([3, 2, 2, 4]) # false


# Loop 8
def num_cats(str)
  count = 0
  (str.size - 2).times do |i|
    slice = str[i..(i+2)]
    if slice == "cat"
      count += 1
    end
  end
  return count
end

puts num_cats("catdogcat") # 2
puts num_cats("dogdogdog") # 0
puts num_cats("catcatcat") # 3
