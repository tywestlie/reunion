require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_reunion_exists
    reunion = Reunion.new("Milwaukee")

    assert_instance_of Reunion, reunion
  end

  def test_reunion_takes_location
    reunion = Reunion.new("Milwaukee")

    assert_equal "Milwaukee", reunion.location
  end

  def test_add_to_activities
    reunion = Reunion.new("Milwaukee")
    actual = reunion.add_to_activites("Drinking")

    assert_instance_of Activity, actual[0]
    assert_equal "Drinking",actual[0].name
  end


end
