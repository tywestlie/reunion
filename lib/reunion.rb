require './lib/activity.rb'
class Reunion
  attr_reader :location, :activities

  def initialize(location)
    @location = location
    @activities = []
  end

  def add_to_activites(activity)
    @activities << Activity.new(activity)
  end

end
