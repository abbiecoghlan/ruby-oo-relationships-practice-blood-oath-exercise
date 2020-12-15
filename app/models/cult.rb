class Cult
    attr_reader :name, :location, :founding_year, :slogan


    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self 
    end 

    def recruit_follower(follower)
        time = Time.new
        BloodOath.new("#{time.year}-#{time.month}-#{time.day}", self, follower)
    end 

    def my_bloodoaths
        BloodOath.all.select {|bo| bo.cult == self}
    end 

    def cult_population
        self.my_bloodoaths.count
    end 

    def self.all
        @@all 
    end 

    def self.find_by_name(name)
        self.all.find {|c| c.name == name}
    end 

    def self.find_by_location(location)
        self.all.select {|c| c.location == location}
    end 

    def self.find_by_founding_year(founding_year)
        self.all.select {|c| c.founding_year == founding_year}
    end 

    def cult_members
        self.my_bloodoaths.collect {|bo| bo.follower}
    end 

    def average_age
        ages = self.cult_members.collect {|m| m.age.to_f}
        ages.sum / ages.count
    end

    def my_followers_mottos
        cult_members.collect {|cm| cm.life_motto}
    end 

    def self.least_popular
        self.all.min_by {|c| c.cult_members.length}
    end 

    def self.most_common_location
        locations = self.all.collect {|c| c.location}
        locations.max_by {|l| locations.count(l)}
    end

end 