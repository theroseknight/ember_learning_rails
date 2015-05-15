class LegsController < ApplicationController
  #Create
  def create
    puts params[:leg][:home_marker]
    puts params[:leg][:home_marker].class
    if params[:leg][:home_marker] == "false"
      puts "I'M IN HERE"
      legs = []
      new_leg = Leg.create(
        vacation_id:params[:leg][:vacation_id],
        starting_city:params[:leg][:starting_city],
        starting_state:params[:leg][:starting_state],
        ending_city:params[:leg][:ending_city],
        ending_state:params[:leg][:ending_state],
        starting_lat:params[:leg][:starting_lat],
        starting_lng:params[:leg][:starting_lng],
        ending_lat:params[:leg][:ending_lat],
        ending_lng:params[:leg][:ending_lng],
        marker_position:params[:leg][:marker_position],
        home_marker:params[:leg][:home_marker],
      )
      legs.push(new_leg)
      last_leg = Leg.where("vacation_id= ? AND marker_position= ?", params[:leg][:vacation_id], 8)[0]
      puts last_leg.inspect
      last_leg.starting_city = params[:leg][:ending_city]
      last_leg.starting_state = params[:leg][:ending_state]
      last_leg.starting_lat = params[:leg][:ending_lat]
      last_leg.starting_lng = params[:leg][:ending_lng]
      last_leg.save
      legs.push(last_leg)
      puts "here 1"
      puts legs.inspect
      render json:{legs:legs}
    else
      legs = []
      first_leg = Leg.create(
        vacation_id:params[:leg][:vacation_id],
        starting_city:params[:leg][:starting_city],
        starting_state:params[:leg][:starting_state],
        ending_city:params[:leg][:ending_city],
        ending_state:params[:leg][:ending_state],
        starting_lat:params[:leg][:starting_lat],
        starting_lng:params[:leg][:starting_lng],
        ending_lat:params[:leg][:ending_lat],
        ending_lng:params[:leg][:ending_lng],
        marker_position:params[:leg][:marker_position],
        home_marker:params[:leg][:home_marker],
      )
      legs.push(first_leg)
      last_leg = Leg.create(
        vacation_id:params[:leg][:vacation_id],
        starting_city:params[:leg][:ending_city],
        starting_state:params[:leg][:ending_state],
        ending_city:params[:leg][:starting_city],
        ending_state:params[:leg][:starting_state],
        starting_lat:params[:leg][:ending_lat],
        starting_lng:params[:leg][:ending_lng],
        ending_lat:params[:leg][:starting_lat],
        ending_lng:params[:leg][:starting_lng],
        marker_position:8,
        home_marker:params[:leg][:home_marker],
      )
      legs.push(last_leg)
      puts legs.inspect
      render json:{legs:legs}
    end
  end
  #Read - All
  def index
    puts params
    legs = Leg.where(vacation_id:params[:vacation_id])
    render json:{legs:legs}
  end
  #Read - One
  def show
    leg = Leg.find(params[:id])
    render json:{leg:leg}
  end
  #Update
  def update
    leg = Leg.find(params[:id])
    if leg.update(account_params)
  		render json:{leg:leg.attributes}
  	else
  		render json:{errors:leg.errors}
  	end
  end

  private
  def account_params
      params.require(:leg).permit(:vacation_id, :starting_city, :starting_state, :ending_city, :ending_state, :starting_lat, :starting_lng, :ending_lat, :ending_lng, :marker_position, :home_marker)
 	end
end
