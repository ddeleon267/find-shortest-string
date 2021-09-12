## retate problem
## given an array of at least one string, return string w/ longest length
## if more than 1 string with shortest length, return first encountered - so order matters

## understand problem
## given array ["apple", "banana", "canteloupe", "jujubee"]
# return "apple"

## edge cases?
## really just when more than 1 string has shortest length

# def find_shortest_string(arr)
#  arr.sort_by {|str| str.length}.first
# end
# 4.9335e-06

#expl: sort the strings in ascending order based on length, then grab the first (shortest) one

def find_shortest_string(arr)
  shorty = arr.first

  arr.each do |str|
    shorty = str if str.length < shorty.length #|| shorty.empty?
  end
  shorty
end
# 2.5925e-06

# expl: 
# create container for storing shortest string
# if you find anythig shorter than that (or if you have the dummy string), reset to current value
# retur final. shortest value


## psuedocode
## start container string w/ length zero


if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  puts

  puts "Expecting: 'apple' "
  puts "=>", find_shortest_string(["apple", "banana", "canteloupe", "jujubee"])

  puts

  puts "Expecting: 'ccc' "
  puts "=>", find_shortest_string(["aaaaa", "bbbb", "ccc", "ddd"])

  # Don't forget to add your own!

  # BENCHMARK HERE
  #   store the current time in a variable called start time
  str = "banana"
  long_arr = []
  100.times do
    long_arr.push(str)
  end

  start_time = Time.now

  1000.times do
    find_shortest_string(['aaa', 'a', 'bb'])
    find_shortest_string(long_arr)
  end
  # loop 1000 times:
  #   execute the method using a small input, e.g. three items if input is an Array
  #   execute the method using a larger input, e.g. 100 items if input is an Array
  avg_runtime = (Time.now - start_time) / 2000.0
  # average runtime = (current time - start time) / 2000
  puts "avg runtime is", avg_runtime
end

# Please add your pseudocode to this file
# And a written explanation of your solution
