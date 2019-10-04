
#Challenge 1
paragraph = "A lifetime allows a confine beside the sport soil. A preserving recipe swears. Another voltage nails each surplus. A gown dislikes a floppy gulf. The hundred continuum trails underneath our gender. When will a specimen sense the official?"
def count_ts(paragraph)
  countts = 0
  paragraph.size.times do |para|
    if paragraph[para] == "t" || paragraph[para] == "T"
      countts = countts + 1
    end
  end

  puts "Count: #{countts}"
end

puts count_ts(paragraph)

#Challenge 2
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
def evens(nums)
  count_evens = 0
  nums.each do |even|
    if even % 2 == 0
      count_evens = count_evens + 1
    end
  end

  puts "Count: #{count_evens}"
end

puts evens(nums)

#Challenge 3
num = [39, 22, 34, 11, 57, 35]
def average(num)
  total = 0
  num.each do |mean|
    total = total + mean
  end
  total = total / num.size
  puts total
end

puts average(num)

#Challenge 4
no = [33, 27, 56, -30, 11, -24, 3, 102]
def max(no)
  max = 0
  no.each do |i|
    if max < i
      max = i
    end
  end
  return max
end

puts max(no)

#Challenge 5
numb = [2, 6, 11, 61, 32, 49, 22]
def meaner(numb)
  total = 0
  numb.each do |i|
    total = total + i
  end
  numb.each do |i|
    if i == numb.sort.last
      total = total - numb.sort.last
    elsif i == numb.sort.first
      total = total - numb.sort.first
    end
  end
  total = total / (numb.size - 2)
  puts total
end

puts meaner(numb)

#Challenge 6
ones = [21, 33, 42, 19, 56, 99]
def no_one_nor_n(ones, no)
  ones.each do |uno|
    uno.size.times do |i|
      if uno[i] == 1 || uno == no
          return false
      end
    end
  end
    return true
end

puts no_one_nor_n(ones, 3)

#EXTRA CHALLENGE
def palindrome(word)
  i = 0
  last_letter = -1
  word.size.times do |i|
    if word[i] == word[last_letter]
      last_letter = last_letter - 1
    else
      return false
    end
  end
  return true
end

puts palindrome("tacocat")
puts palindrome("rotor")
puts palindrome("scenery")
puts palindrome("civoc")

#EXTRA CHALLENGE 2
#completely incorrect
def count_palindrome(para1)
  total = 0
  last_letter = -1
  i = 0
  para1.split do |h|
    h.size.each do |n|
      if h[n] == last_letter
        last_letter = last_letter - 1
      else
        total = total
      end
      total = total + 1
    end
    return "Count: #{total}"
  end
end

puts count_palindrome("The civic green park was on a whole different level. I refer it to my friends.")
