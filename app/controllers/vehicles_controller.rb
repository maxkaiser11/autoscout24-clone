class VehiclesController < ApplicationController
before_action :authenticate_user!, except: :index
before_action :set_vehicle, only: %i[show edit update destroy]

  def index
    @vehicles = Vehicle.all
  end

  def show

  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to root_path, status: :see_other
  end

  def edit
  end

  def update
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:type_of_vehicle, :title, :image_url, :price_per_day, :location, :brand, :model, :description, :year)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
