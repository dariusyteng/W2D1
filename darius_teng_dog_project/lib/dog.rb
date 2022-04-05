class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age
    end
    def age=(number)
        @age = number
    end
    def bark
        if age > 3 
            @bark.upcase 
        else 
            @bark.downcase
        end
    end
    def favorite_foods
        @favorite_foods
    end
    def favorite_food?(str)
# The favorite_foods array may include upcase letters,
# so it's necessary to iterate through each element and downcase them.
        downcased = favorite_foods.map(&:downcase)
        downcased.include?(str.downcase)
    end

end
