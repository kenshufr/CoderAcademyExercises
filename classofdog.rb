require "geocoder"

class Dog
    #attr_accessor :attr is attr_reader and writer in one
    attr_accessor :total_distance 

    def initialize(name, age, location)
        @name = name
        @age = age
        @location = location
        @walk_counter = 0
        @walk_log = []
        @total_distance = 0
    end

    def walk(walk_location, walk_distance)
        @walk_location = walk_location
        @walk_distance = walk_distance
        @walk_counter += 1
        @walk_coordinates = Geocoder.search(@walk_location)
        @walk_log << [@walk_location, @walk_distance, Time.now,@walk_coordinates.first.coordinates[0], @walk_coordinates.first.coordinates[1]]
        @total_distance += @walk_distance
        self
    end

    def display_walks
        puts "I have been on #{@walk_counter} walks today.\n\nList of walks:\n\n"
        #puts i=0; @walk_log[i][1] for @walk_log[i][2]km; i++
        for i in @walk_log
            puts "#{i[0]} for #{i[1]} km\nlongitude: #{i[3]}, latitude #{i[4]}\nlogged at #{i[2]}\n\n"
        end
    end

    def speak
        puts "woof, my name is #{@name}, I am #{@age} years old and i am located at #{@location}."
    end
    
end

doggo = Dog.new("Ralph", 10, 'Syd')

doggo.walk("Sydney", 10).walk("Brisbane", 5).display_walks


