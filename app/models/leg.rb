class Leg < ActiveRecord::Base
  belongs_to :vacation

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    return "#{self.ending_city}, #{self.ending_state}"
  end
end
