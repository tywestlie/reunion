require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_exists
    activity = Activity.new("Yodeling")
    assert_instance_of Activity, activity
  end

  def test_activity_has_name
    activity = Activity.new("Hiking")

    assert_equal "Hiking", activity.name
  end

  def test_participants_is_an_empty_hash
    activity = Activity.new("Hiking")

    assert_instance_of Hash, activity.participants
    assert_empty activity.participants
  end

  def test_add_participants
    activity = Activity.new("Hiking")
    activity.add_participants("JimBob",2.15)
    expected = {"JimBob" => 2.15}

    assert_equal expected, activity.participants
  end

  def test_cost
    activity = Activity.new("Hiking")
    activity.add_participants("JimBob", 2)
    activity.add_participants("Carol", 5)
    activity.add_participants("Dingus", 100)

    expected = 107

    assert_equal expected, activity.cost
  end
end
