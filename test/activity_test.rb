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
    activity.add_participants("JimBob",25)
    expected = {"JimBob" => 25}

    assert_equal expected, activity.participants
  end

  def test_cost
    activity = Activity.new("Hiking")
    activity.add_participants("JimBob", 25)
    activity.add_participants("Carol", 25)
    activity.add_participants("Dingus", 50)

    expected = 100

    assert_equal expected, activity.cost
  end

  def test_split_cost
    activity = Activity.new("Hiking")
    activity.add_participants("JimBob", 25)
    activity.add_participants("Carol", 25)
    activity.add_participants("Dingus", 50)

    expected = 33

    assert_equal expected, activity.split_cost(100)
  end

  def test_particpant_owes_or_is_owed
    activity = Activity.new("Hiking")
    activity.add_participants("JimBob", 25)
    activity.add_participants("Carol", 25)
    activity.add_participants("Dingus", 50)

    expected ={"JimBob" => 8, "Carol" => 8, "Dingus" => -17}

    assert_equal expected, activity.owed_owes(33)
  end

end
