class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self 
    end  

    def join_cult(cult_instance)
        cult_instance.recruit_follower(self)
    end 

    def self.all
        @@all
    end 

    def self.of_a_certain_age(age)
        self.all.select {|f| f.age >= age}
    end 

    def follower_bloodoaths
        BloodOath.all.select {|bo| bo.follower == self}
    end 


    def my_cults_slogans
        self.follower_bloodoaths.collect {|bo| bo.cult.slogan}
    end 


    def self.most_active       
        followers = BloodOath.all.collect {|bo| bo.follower}
        followers.max_by{|f| followers.count(f)}
    end 

    def self.top_ten
            followers = BloodOath.all.collect {|bo| bo.follower}
            sorted_followers = followers.sort{|a,b| followers.count(b) <=> followers.count(a)}
            sorted_followers.uniq.first(10)
    end 


end