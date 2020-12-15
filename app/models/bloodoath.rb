class BloodOath
    attr_reader :initation_date, :cult, :follower

    @@all = []

    def initialize(initation_date, cult, follower)
        @initation_date = initation_date
        @cult = cult
        @follower = follower
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def self.first_oath
        @@all.first
    end 

end 