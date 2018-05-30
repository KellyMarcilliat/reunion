require './lib/participants'

class Activity

  attr_reader   :name,
                :base_cost
  attr_accessor :participants
  def initialize(name, participants, base_cost = 0)
    @name = name
    @participants = participants
    @base_cost = base_cost
  end

  def calculate_cost_per_participant
    @cost_per_participant = @base_cost / participants.count
  end

  def add_participants(name, amount_paid)
    @participants[name] = amount_paid
  end
end
