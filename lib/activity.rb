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

end
