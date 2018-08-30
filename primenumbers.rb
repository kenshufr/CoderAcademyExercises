# calculate all prime numbers from 1 to 100

counter = 1

until counter == 100 do
    counter += 1
    potentialfactor = 2
    while potentialfactor < counter do
        if counter % potentialfactor == 0
            break
        else potentialfactor += 1
        end
    end
    if potentialfactor == counter
        print "#{counter} "
    end
end

puts""
