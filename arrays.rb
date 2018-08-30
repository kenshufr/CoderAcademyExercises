# Part I - Print a single item from the following arrays:

# Use the following array of Kardashians for exercises 1 - 5
kardashians = ['Kim', 'Robert', 'Khloé', 'Rob', 'Kourtney']

# 1) Find two ways to access and print the 'Kim' value.
puts kardashians[0]
puts kardashians.first

# 2) Find two ways to remove the male names from the Kardashians.
kardashians.each do |name| 
    if (name.include?("Rob")) 
        kardashians.delete(name)
    end
end

kardashians.delete_if do |name| name.include?("Rob") end

kardashians -= %w(Rob Robert)

# 3) Remove one Kardashian, print the names and then add them back to the Array:
kardashians.delete("Kourtney")
puts kardashians
kardashians << "Kourtney"

# 4) Take the last Kardashian and make them the first, print the result.
kardashians.unshift(kardashians.pop)
kardashians.reverse!

# 5) Find a way to count the number of items in the array that begin with the letter 'K'
puts kardashians.count { |name| name.include?("K") }
# puts kardashians.count { |name| name[0] == "K" }

puts kardashians