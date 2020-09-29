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

    def find_by_species(spec)
        
        

    

end
