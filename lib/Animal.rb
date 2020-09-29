class Animal

    attr_accessor :species, :weight, :nickname, :zoo

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight.to_i
        @nickname = nickname
        @zoo = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(spec)
        Animal.all.select { |breed| breed.species == spec }
    end
end
