=begin
Create an array called four_letter_animals with the following animals (in this order):
Calf
Duck
Elephant
Goat
Lamb
Lion
Mule
Dog
Add Puma to the end of the array
Insert Joey after Goat and before Lamb
Delete Dog
Reverse the order of the array
Replace Elephant with Foal
Add Bear to the end of the array
Reverse the order of the array again
=end

four_letter_animals = %w(Calf Duck Elephant Goat Lamb Lion Mule Dog)
four_letter_animals << "Puma"
#four_letter_animals.insert(4,"Joey")
four_letter_animals[4]="Joey"
four_letter_animals.delete("Dog")
four_letter_animals.reverse!
four_letter_animals[four_letter_animals.index("Elephant")]="Foal"
#four_letter_animals = four_letter_animals.map do |x| 
#    if x == "Elephant"
#        "Foal"
#    else x
#    end
#end
#four_letter_animals << "Bear", unshift for add to beginning
four_letter_animals.push("Bear")
four_letter_animals.reverse!

p four_letter_animals
puts""
