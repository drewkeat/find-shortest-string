def find_shortest_string(arr)
  nums = arr.map{|str| str.length}
  idx = nums.index(nums.min)
  return arr[idx]
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  def generate_sample_words(num_words, word_length) 
    sample_words = []
    alphabet = [*('a'..'z')]+[*('A'..'Z')]
    num_words.times { 
      word = ""
      rand(1..word_length).times { word += alphabet[rand(alphabet.length)]}
      sample_words << word
    }
    return sample_words
  end
  
  long_arr = generate_sample_words(1000, 10)
  short_arr = generate_sample_words(10, 10)
  
  start = Time.now()
  1000.times { 
    find_shortest_string(long_arr)
    find_shortest_string(short_arr)
  }

  puts "Average Time = #{(Time.now() - start)*1000 / 2000}"
end

# Please add your pseudocode to this file

# map array to str lengths
# find min num in mapped array
# return array[index of min]


# And a written explanation of your solution
# By mapping the array to string lengths, we can quickly access the index of the minimum number and return the original array element at that index.