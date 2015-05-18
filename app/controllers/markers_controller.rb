class MarkersController < ApplicationController
  #Create
  def create
    render json:{}
  end
  #Read - All
  def index
    puts params
    markers = Marker.where(vacation_id:params[:marker][:vacation_id])
    puts markers.inspect
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
      params.require(:marker).permit(:vacation_id, :leg_id, :latitude, :longitude, :home_marker)
 	end
end
