require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_instance_of_activity_exists
    activity = Activity.new("dragon slaying", {"Joey" => 0, "Elaine" => 0, "Jake" => 0}, )
    assert_instance_of Activity, activity
  end

  def test_instance_has_name_and_participants_and_base_cost
    activity = Activity.new("dragon slaying", {"Joey" => 0, "Elaine" => 0, "Jake" => 0}, 1000)
    assert_equal activity.name, "dragon slaying"
    assert_equal activity.participants.keys, ["Joey", "Elaine", "Jake"]
    assert_equal activity.base_cost, 1000
  end

  def test_can_calculate_cost_per_participant
    activity = Activity.new("dragon slaying", {"Joey" => 0, "Elaine" => 0, "Jake" => 0}, 1000)
    assert_equal activity.calculate_cost_per_participant, 333
  end

  def test_can_add_participants
    activity = Activity.new("dragon slaying", {"Joey" => 0, "Elaine" => 0, "Jake" => 0}, 1000)
    assert_equal activity.participants.count, 3
    activity.add_participants("Kelly",0)
    assert_equal activity.participants.count, 4
  end 
end
