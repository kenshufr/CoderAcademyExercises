# For questions 1 and 2 below use the following array:
shopping_list = ['cheese', 'toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# 1) Use .each to loop through each item in the shopping_list and capitalise
#    all words in each item. Hint: work smarter not harder - check Stack Overflow

# puts shopping_list.join(" ").split.map(&:capitalize)
# puts shopping_list.join(" ").split.each { |item| item.capitalize! }

array = []
shopping_list.each do |item|
     array.push(item.split.each { |e| e.capitalize! }.join(" "))
end
puts array

# ??? any way to replace in place
# shopping_list.each do |item|
#     item.split.each { |e| e.capitalize! }.join(" ")
# end

# 2) Use while to loop through the shopping list and divide the shopping list
#    into multiple arrays according to item type. Print all of the arrays with a divider
#    between each and a total item count for each item.

# bathroom_items = []
# fruit = []
# dairy = []
# meals = []
# beverages = []

# i = 0
# while i < shopping_list.length do
#     shopping_list[i] == 'cheese' ? dairy.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'toilet paper' ? bathroom_items.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'taco shells' ? meals.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'sushi rolls' ? meals.push(shopping_list[i]) : "x"
#     shopping_list[i] == '3 avocados' ? fruit.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'soap' ? bathroom_items.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'sparkling mineral water' ? beverages.push(shopping_list[i]) : "x"
#     shopping_list[i] == '2 pineapples' ? fruit.push(shopping_list[i]) : "x"
#     shopping_list[i] == 'toothpaste' ? bathroom_items.push(shopping_list[i]) : "x"
#     i += 1
# end

# puts "Bathroom: #{bathroom_items}"
# puts "Fruit: #{fruit}"
# puts "Dairy: #{dairy}"
# puts "Meals: #{meals}"
# puts "Beverages: #{beverages}"


# i = 0
# while i < 5 do
#     puts i
#     i = i + 1
# end

# 3) Create an array of at least 20 integers.
#       Use a for loop to:
#         - find the average of all the integers
#         - find the sum of all the integers
#         - create an array of the same values as floats
#         - create an array of values that are multiplied by a randomly generated number

IntArray = [*1..5, *10..18]

# # cumulativeTotal = 0
# # for num in IntArray
# #     cumulativeTotal += num
# # end
# # puts cumulativeTotal.to_f/IntArray.length

# # puts cumulativeTotal

# FloatArray = []
# for num in IntArray
#     FloatArray.push(num.to_f)
# end
# puts FloatArray

# randArray= []
# for num in IntArray
#     randArray.push(num *= rand(100))
# end
# puts randArray


# EXTENSION TASK
# Use a for loop to go through each item in the shopping_list, remove any number in the
# string and replace it with its corresponding word. For example: '3 avocados' will
# become 'three avocados'.
# Consider using RegEx.

# shopping_list = ['cheese', 'toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# for item in shopping_list
#     item[0] == "2" ? item[0] = "two" : item
#     item[0] == "3" ? item[0] = "three" : item
# end

# puts shopping_list

# hash = {
#     "2" => "two",
#     "3" => "three"
# }