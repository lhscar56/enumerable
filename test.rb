# frozen_string_literal: true

require './enumerable'

puts [1, 2, 'b', 'c'].my_each_with_index { |n, e| puts n, e }

puts %w[ant bear cat].my_all? { |word| word.length >= 3}
puts %w[ant bear cat].my_all? { |word| word.length >= 4 }
puts %w[ant bear cat].my_all?(/t/)
puts [1, 2i, 3.14].my_all?(Numeric)
puts [nil, true, 99].my_all?

puts %w[ant bear cat].my_any? { |word| word.length >= 3 }
puts %w[ant bear cat].my_any? { |word| word.length >= 4 }
puts %w[ant bear cat].my_any?(/d/)
puts [nil, true, 99].my_any?(Integer)
puts [nil, true, 99].my_any?
puts [].any?

puts %w[ant bear cat].my_none? { |word| word.length == 5 }
puts %w[ant bear cat].my_none? { |word| word.length >= 4 }
puts %w[ant bear cat].my_none?(/d/)
puts %w[1 3.14 42].my_none?(Float)
puts [].my_none?
puts [nil].my_none?
puts [nil, false].my_none?
puts [nil, false, true].my_none?

arr = [1, 2, 4, 2]
puts arr.my_count
puts arr.my_count(2)
puts arr.my_count { |x| x % 2 == 0 }

puts [1, 2, 3].my_map { |n| n * 2 }

puts (5..10).reduce(:+)
puts (5..10).my_inject { |sum, n| sum + n }
puts (5..10).reduce(1, :*)
puts (5..10).my_inject(1) { |product, n| product * n }

longest = %w[cat sheep bear].my_inject do |memo, word|
  memo.length > word.length ? memo : word
end
puts longest

