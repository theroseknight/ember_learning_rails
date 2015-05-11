class VacationsController < ApplicationController
  #Read - All
  def index
    vacations = Vacation.all.to_a
    vacations.map!{|vacation|vacation.attributes}
    render json:{vacations:vacations}
  end
end
