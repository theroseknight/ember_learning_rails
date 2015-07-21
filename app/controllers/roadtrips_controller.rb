class RoadtripsController < ApplicationController
  #Create
  def create
    vehicle = Vehicle.where("year = ? AND make = ? AND model = ?",params[:roadtrip][:car_year],params[:roadtrip][:car_make],params[:roadtrip][:car_model] )[0]
    mpg = vehicle.highway_mpg

    new_roadtrip = Roadtrip.create(
      name:params[:roadtrip][:name],
      number_of_days:params[:roadtrip][:number_of_days],
      hours_of_sleep:params[:roadtrip][:hours_of_sleep],
      car_year:params[:roadtrip][:car_year],
      car_make:params[:roadtrip][:car_make],
      car_model:params[:roadtrip][:car_model],
      car_mpg:mpg
    )

    render json:{roadtrip:new_roadtrip}
  end

  #Read - All
  def index
    roadtrips = Roadtrip.all.to_a
    roadtrips.map!{|roadtrip|roadtrip.attributes}
    render json:{roadtrips:roadtrips}
  end

  #Read - One
  def show
    roadtrip = Roadtrip.find(params[:id])
    roadtrip = roadtrip.attributes
    render json:{roadtrip:roadtrip}
  end

  #Update
  def update
    roadtrip = Roadtrip.find(params[:id])
    if roadtrip.update(account_params)
  		render json:{roadtrip:roadtrip.attributes}
  	else
  		render json:{errors:roadtrip.errors}
  	end
  end

  #Destroy
  def destroy
    roadtrip=Roadtrip.find(params[:id])
    if roadtrip.destroy
      render json:{roadtrip:roadtrip.attributes}
    else
      render json:roadtrip.errors
    end
  end

  private
  def account_params
    params.require(:roadtrip).permit(:name,:number_of_days,:hours_of_sleep,:car_year,:car_make,:car_model)
  end
end
