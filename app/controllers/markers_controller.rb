class MarkersController < ApplicationController
  #Create
  def create
    puts params
    render json:{}
  end
  #Read - All
  def index
    markers = Marker.where(vacation_id:params[:vacation_id])
    render json:{markers:markers}
  end
  #Read - One
  def show
    marker = Marker.find(params[:id])
    render json:{marker:marker}
  end
  #Update
  def update
    marker = Marker.find(params[:id])
    if marker.update(account_params)
  		render json:{marker:marker.attributes}
  	else
  		render json:{errors:marker.errors}
  	end
  end

  private
  def account_params
      params.require(:marker).permit(:vacation_id, :leg_id, :latitude, :longitude)
 	end
end
