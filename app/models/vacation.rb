class Vacation < ActiveRecord::Base
  has_many :legs
  has_many :markers
  accepts_nested_attributes_for :legs
  accepts_nested_attributes_for :markers

  def attributes
		leg_ids=legs.map{|leg|leg.id}
    marker_ids=markers.map{|marker|marker.id}
		super.merge({
			"leg_ids"=>leg_ids,
      "marker_ids"=>marker_ids
		})
	end
end
