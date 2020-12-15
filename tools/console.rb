require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

coolcult = Cult.new("Cool Cult", "chicago", 1988, "hi!")
dogcult = Cult.new("Dog Cult", "chicago", 2016, "woof!")
birdcult = Cult.new("Bird Cult", "boston", 1988, "tweet")
cabincult = Cult.new("Northside Night hawks", "california", 2019, "<3")
lamecult = Cult.new("jerks", "hell", 2020, "no one likes us")


abbie = Follower.new("Abbie", 32, "having fun with it")
bela = Follower.new("Bela", 8, "i love garbage")
stanley = Follower.new("Stanley", 8, "HONKS 4 LIFE")
erica = Follower.new("Erica", 35, "wheres bb kitty?")
jessrore = Follower.new("jess", 30, "love you big")
marielle = Follower.new("M", 32, "wheres my nerf gun?")
piper = Follower.new("piper", 30, "i love crystals")
kathryn = Follower.new("kathryn", 34, "do you need help with anything?")
liz = Follower.new("Liz", 30, "something smart and charming")
jess = Follower.new("Jess", 31, "im very smart and helpful")
angela = Follower.new("angela", 30, "cats")
kelly = Follower.new("kelly", 29, "something fun and smart")
savanah = Follower.new("sav", 30, "going high")



onebloodoath = BloodOath.new("2019-06-01" ,cabincult, abbie)
two = BloodOath.new("2019-06-01" ,cabincult, erica)
three = BloodOath.new("2019-06-01" ,cabincult, jessrore)
four = BloodOath.new("2019-06-01" ,cabincult, marielle)
five = BloodOath.new("2019-06-01" ,cabincult, piper)
six = BloodOath.new("2019-06-01" ,cabincult, kathryn)
seven = BloodOath.new("2019-06-01" ,cabincult, liz)
eight = BloodOath.new("2019-06-01" ,cabincult, jess)
nine = BloodOath.new("2019-06-01" ,cabincult, angela)
ten = BloodOath.new("2019-06-01" ,cabincult, kelly)



abbiebloodoath = BloodOath.new("2015-05-28",coolcult, abbie) 
belabloodoath = BloodOath.new("2019-05-28", coolcult, bela)
belabloodoath2 = BloodOath.new("2019-04-28", dogcult, bela)
abbiebloodoath2 = BloodOath.new("2015-04-27",dogcult, abbie)
stanleybloodoath = BloodOath.new("2020-05-28", birdcult, stanley)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits