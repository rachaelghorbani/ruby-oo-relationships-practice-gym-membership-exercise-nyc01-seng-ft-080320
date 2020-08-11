# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

##### GYM #####
g1 = Gym.new("Golds")
g2 = Gym.new("Barry's")
g3 = Gym.new("David Barton")
g4 = Gym.new("NYSC")


##### LIFTERS #####
l1 = Lifter.new("Rachael", 1000)
l2 = Lifter.new("Steven", 1800)
l3 = Lifter.new("Valdet", 700)
l4 = Lifter.new("Natacha", 550)

##### MEMBERSHIP #####
m1 = Membership.new(l1, g1, 100)
m2 = Membership.new(l2, g2, 110)
m3 = Membership.new(l3, g3, 95)
m4 = Membership.new(l4, g4, 50)
m5 = Membership.new(l1, g3, 120)
m6 = Membership.new(l1, g2, 90)

Pry.start
