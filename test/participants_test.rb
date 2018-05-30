require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require './lib/participants'

class ParticipantsTest < Minitest::Test
  def test_participants_have_name_activity_and_payment
    participant = Participants.new("Daryl", {"dragon slaying" => 50, "egg throwing" => 10})
    assert_equal participant.name, "Daryl"
    assert_equal participant.total_paid, 60
  end

  def test_can_change_total_paid
    participant = Participants.new("Daryl", {"dragon slaying" => 50, "egg throwing" => 10})
    # assert_equal participant.total_paid, 60
    participant.make_payment("dragon slaying", 100)
    assert_equal participant.total_paid, 160
  end


end
