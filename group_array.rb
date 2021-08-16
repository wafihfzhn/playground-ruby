arr = ['one', 'two', 'three', 'two', 'one', 'three', 'one', 'three', 'two', 'three', 'one', 'one']

puts '=== Group By Count In Array ==='
# Group by count in array with tally (only for ruby 2.7)
first_hash = arr.tally
puts first_hash

# Group by count in array with group_by
sec_hash = Hash[arr.group_by{ |x| x }.map { |key, value| [key, value.size] }]
puts sec_hash

# Group by count in array with loop
third_hash = {}
arr.each do |num|
  third_hash[num] = arr.count(num)
end
puts third_hash

puts ''
puts '=== Sort Group By Count In Array ==='
# Sort first hash
puts first_hash.sort_by { |_key, value| value }.to_h

# Sort second hash
puts Hash[sec_hash.sort_by(&:last)]

# Sort third hash
puts third_hash.sort_by { |_key, value| value }.to_h

## Notes
# We can use 'reverse' for first_hash and third_hash if we want sort them from largest to smallest e.g 'first_hash.sort_by { |_key, value| value }.reverse.to_h'
# For second hash we can change '&:last' to '&:first' if we want sort it from largest to smallest e.g 'Hash[sec_hash.sort_by(&:first)]'
