class VacationsController < ApplicationController
  #Create
  def create
    new_vacation = Vacation.create(
      name:params[:vacation][:name]
    )
    render json:{vacation:new_vacation}
  end
  #Read - All
  def index
    vacations = Vacation.all.to_a
    vacations.map!{|vacation|vacation.attributes}
    render json:{vacations:vacations}
  end
  #Read - One
  def show
    vacation = Vacation.find(params[:id])
    vacation = vacation.attributes
    render json:{vacation:vacation}
  end
  #Update
  def update
    vacation = Vacation.find(params[:id])
    if vacation.update(account_params)
  		render json:{vacation:vacation.attributes}
  	else
  		render json:{errors:vacation.errors}
  	end
  end
  #Destroy
  def destroy
    vacation=Vacation.find(params[:id])
    if vacation.destroy
      render json:{vacation:vacation.attributes}
    else
      render json:vacation.errors
    end
  end

  private
  def account_params
    params.require(:vacation).permit(:name)
  end
end
