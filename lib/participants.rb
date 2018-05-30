class Participants

  attr_reader   :name,
                :activity_payment_hash
  attr_accessor :total_paid,
                :activities
  def initialize(name, activity_payment_hash)
    @name = name
    @activity_payment_hash = activity_payment_hash
    @total_paid = activity_payment_hash.values.sum
    @activities = activity_payment_hash.keys
  end

  def make_payment(activity, payment)
    new_total = @activity_payment_hash[activity] + payment
    @activity_payment_hash[activity] = @activity_payment_hash[activity] + new_total
    # return @total_paid
  end
end
