=begin Ask the user for three or more grocery items, store them in a list (array). It's OK to ask three times. Show the list to the user. Can’t remember how to use a specific ruby feature/syntax? That’s normal! Google + Ruby docs :)

Try using the `.length` method to tell the user how many items are in their list.
Sort the list alphabetically before showing it to the user
Are you using gets.chomp multiple times? A 3.times loop might tidy your code.
If the user tries to add 'Ice Cream', secretly replace it with 'Broccoli'
Ask the user for quantities too. Show a nice looking list back to the user.
=end

grocery_item = Array.new
item_quantity = Array.new
complete_list = Array.new
item_number=0

while item_number < 3 do    
    puts "\nPlease add item #{item_number + 1}: "
    grocery_item << gets.chomp.downcase
    puts "\nHow many?"
    item_quantity << gets.chomp.to_i
    complete_list << "#{grocery_item[item_number]} x #{item_quantity[item_number]}"
    item_number += 1
end

complete_list.each do |x|
    x.gsub!('ice cream', 'broccoli')
end

puts "Your shopping list: \n#{complete_list.sort.join("\n")}"



