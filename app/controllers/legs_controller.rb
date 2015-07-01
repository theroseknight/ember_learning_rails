class LegsController < ApplicationController
  #Create
  def create
    #All creations other than the first leg - creates new leg and updates return leg starting city to the ending city of the new leg
    if params[:leg][:home_marker] == "false"
      legs = []
      #Create new leg
      new_leg = Leg.create(
        roadtrip_id:params[:leg][:roadtrip_id],
        starting_city:params[:leg][:starting_city],
        starting_state:params[:leg][:starting_state],
        ending_city:params[:leg][:ending_city],
        ending_state:params[:leg][:ending_state],
        marker_position:params[:leg][:marker_position],
        home_marker:params[:leg][:home_marker],
      )
      legs.push(new_leg)

      #Update return trip leg starting city with ending city information from new leg
      last_leg = Leg.where("roadtrip_id= ? AND marker_position= ?", params[:leg][:roadtrip_id], 8)[0]
      last_leg.starting_city = params[:leg][:ending_city]
      last_leg.starting_state = params[:leg][:ending_state]
      last_leg.save
      legs.push(last_leg)

      render json:{legs:legs}
    #First time a leg is created created a return trip leg and the first leg of the journey
    else
      legs = []
      #Create first leg of the roadtrip
      first_leg = Leg.create(
        roadtrip_id:params[:leg][:roadtrip_id],
        starting_city:params[:leg][:starting_city],
        starting_state:params[:leg][:starting_state],
        ending_city:params[:leg][:ending_city],
        ending_state:params[:leg][:ending_state],
        marker_position:params[:leg][:marker_position],
        home_marker:params[:leg][:home_marker],
      )
      legs.push(first_leg)

      #Create return trip leg of the roadtrip
      last_leg = Leg.create(
        roadtrip_id:params[:leg][:roadtrip_id],
        starting_city:params[:leg][:ending_city],
        starting_state:params[:leg][:ending_state],
        ending_city:params[:leg][:starting_city],
        ending_state:params[:leg][:starting_state],
        marker_position:8,
        home_marker:params[:leg][:home_marker],
      )
      legs.push(last_leg)

      render json:{legs:legs}
    end
  end

  #Read - All
  def index
    legs = Roadtrip.find(params[:roadtrip_id]).legs

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
  		render json:{errors:"fail"}
  	end
  end

  private
  def account_params
      params.require(:leg).permit(:roadtrip_id, :starting_city, :starting_state, :ending_city, :ending_state, :marker_position, :home_marker)
 	end
end
