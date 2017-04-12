# frozen_string_literal: true

# range as enumerable lab

# calculate the sum of all the even numbers in a range

# create an array with the numbers 1 through 20
array = (1..20).to_a

# identify the odd values
# calculate the sum of these values
array_odd = array.select { |n| n if n % 2 != 0 }
array_odd_sum = array_odd.reduce(:+)

# identify the even values
# calculate the sum of these values
array_even = array.select { |n| n if n % 2 == 0 }
array_even_sum = array_even.reduce(:+)

# use each_with_object to add all the numbers in the array
array.each_with_object({:sum => 0}) {|i, hsh| hsh[:sum] += i}
