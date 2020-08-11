class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    total = Lifter.all.sum do |lifter|
      lifter.lift_total
    end
    total/Lifter.all.length
  end

  def total_cost
    self.memberships.sum do |membership|
      membership.cost
    end
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end

