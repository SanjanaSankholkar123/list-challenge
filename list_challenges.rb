# threed
def threed(list)
  total_3s = 0
  (list.size).times do |i|
    if list[i] == 3
      total_3s += 1
    end
    if list[i] == 3 && list[i + 1] == 3
      return false
    end
  end
  if total_3s == 3
    return true
  end
  if total_3s != 3
    return false
  end
end

# puts threed([1, 3, 2, 3, 5, 3]) # true
# puts threed([3, 3, 2, 3, 1]) # false
# puts threed([3, 2, 3, 2, 1, 5, 6]) # false
# puts threed([3, 4, 3, 4, 3, 4, 3, 4]) #false

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# same_first_last
def same_first_last(array)
  if array.size == 1 || array.size > 1
    if array[0] == array[-1]
      return true
    else
      return false
    end
  else
    return false
  end
end

# puts same_first_last([1, 2, 3, 1, 5, 6, 9, 1]) #true
# puts same_first_last([1]) #true
# puts same_first_last([2, 3, 4, 5]) #false

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#middle_way
def middle_way(list1, list2)
  median1 = 0
  if list1.size % 2 == 1
    median1 = list1[list1.size / 2]
  else
    median1 = (list1[list1.size / 2] + list1[(list1.size / 2) - 1]) / 2.0
  end

  median2 = 0
  if list2.size % 2 == 1
    median2 = list2[list2.size / 2]
  else
    median2 = (list2[list2.size / 2] + list2[(list2.size / 2) - 1]) / 2.0
  end

  puts "(#{median1}, #{median2})"
end

# puts middle_way([1, 2, 3], [1, 2, 3])
# puts middle_way([1, 2, 3], [1, 2, 3, 4])
# puts middle_way([1, 2, 3, 4], [1, 2, 3])
# puts middle_way([1, 2, 3, 4], [1, 2, 3, 4])

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# get_sandwich
def get_sandwich(str)
  breadposition = []
  (str.size - 4).times do |i|
    slice = str[i..(i+4)]
    if slice == "bread"
      breadposition.push(i)
    end
  end
  return str[(breadposition[0] + 5)..(breadposition[-1] - 1)]
end

# puts get_sandwich("hibreadjambreadhibread")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# count_code
def count_code(str)
  count = 0
  (str.size - 3).times do |i|
    slice = str[i..(i+3)]
    if slice[0..1] == "co" && slice[3] == "e"
      count += 1
    end
  end
  return count
end

# puts count_code("cooecodecodycadecoqe") #3
# puts count_code("cote") #1
# puts count_code("codycadeclique") #0

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#g_happy
def g_happy(str)
  str_len = str.size
  happy = 0
  str.size.times do |i|
    if str[i] == 'g'
      if i > 0 && i < (str_len - 1)
        if str[i + 1] == 'g' || str[i + 1] == 'G' || str[i - 1] == 'g' || str[i - 1] == 'G'
          happy += 1
        else
          return false
        end
      end
      if i == 0
        if str[i + 1] == 'g' || str[i + 1] == 'G'
          happy += 1
        else
          return false
        end
      end
      if i == (str_len - 1)
        if str[i - 1] == 'g' || str[i - 1] == 'G'
          happy += 1
        else
          return false
        end
      end
    end
  end
  return true
end

# puts g_happy("gGhiggoldgag") #false
# puts g_happy("gGhiggoldgg") #true

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# max_span
def max_span(a, b)
  span = 0
  new_list = []
  c = a.concat(b)
  new_list.push(c)
  reverse_list = new_list.reverse
  new_list.size.times do |i|
    reverse_list.size.times do |n|
      difference = i - n
      if difference > span
        span = difference
      end
    end
  end
  return span.abs()
end

# puts max_span([2, 3, 4], [5, 8, 1])

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# shift_left
def shift_left(list)
  if list.size >= 1
  value_one = list[0]
    i = 0
    until i >= list.size
      list[i] = list[i+1]
      i += 1
    end
  value_one = list[list.size-1]
  return list
  end
end

# puts shift_left([2, 6, 9, 8, 3])

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# can_balance
def can_balance(list)
  count = 0.0
  list.each do |n|
    count += n
  end

  half = count/2
  opposite = 0.0

  list.each do |n|
    opposite += n
    if opposite == half
      return true
    end
  end
return false
end

# puts can_balance([12, 1, 6, 5, 2]) #true
# puts can_balance([33, 2, 10, 14, 36]) #false

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# merge
def merge(a, b)
  c = a + b

  variable = true
  time = c.size - 1
  temp = 0
  while variable == true
    variable = false
    time.size.times do |i|
      if c[i] > c[i + 1]
        temp = c[i]
        c[i] = c[i + 1]
        c[i + 1] = temp
        variable = true
      end
    end
  end
  return c
end

# puts merge([1, 2, 5, 4], [2, 2, 3, 5])

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# either_2_or_4
def either_2_or_4(list)
  either_2 = nil
  either_4 = nil
  i = 0
  limit = list.length - 1
  until i >= limit
    if either_2 == true
      either_2 = true
    elsif (list[i] == 2 && list[i + 1] == 2)
      either_2 = true
    end

    if either_4 == true
      either_4 = true
    elsif (list[i] == 4 && list[i + 1] == 4)
      either_4 = true
    end

    i = i + 1
  end

  if either_2 == true && either_4 == true
    return false
  elsif either_2 == true || either_4 == true
    return true
  else
    return false
  end
end

# puts either_2_or_4([1, 2, 2, 5, 3, 4]) # true
# puts either_2_or_4([1, 2, 2, 3, 4, 4]) # false
# puts either_2_or_4([1, 2, 3, 4, 4, 5]) # true
