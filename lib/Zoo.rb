class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select { |breed| breed.zoo == self }
    end

    def animal_species
        self.animals.map { |breed| breed.species }.uniq
    end

    def animal_nicknames
        self.animals.map { |breed| breed.nickname }
    end

    def find_by_species(spec)
        array = self.animals.filter do |breed| breed.species == spec
        end
        array
    end

    def self.find_by_location(location)
        self.all.find { |cage| cage.location == location }
    end

        
        

    

end
