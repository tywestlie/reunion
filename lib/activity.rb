class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participants(name, paid)
    @participants[name] = paid
    @participants
  end

  def cost
    activity_cost = 0
     @participants.each do |name, paid|
      activity_cost += paid
    end
    activity_cost
  end

  def split_cost(cost)
    cost / (@participants.keys.length)
  end

  def owed_owes(split_cost)
    cost1 = split_cost(cost)
    owed = {}
    @participants.each do |name, paid|
      owed[name] = (cost1 - paid)
    end
    owed
  end

end
