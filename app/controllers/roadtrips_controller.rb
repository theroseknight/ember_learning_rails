class RoadtripsController < ApplicationController
  #Create
  def create
    new_roadtrip = Roadtrip.create(
      name:params[:roadtrip][:name]
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
    params.require(:roadtrip).permit(:name)
  end
end
