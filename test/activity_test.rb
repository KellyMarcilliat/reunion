require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_instance_of_activity_exists
    activity = Activity.new
    assert_instance_of Activity, Activity
  end 
end
