class VehiclesController < ApplicationController
before_action :authenticate_user!, except: :index
before_action :set_vehicle, only: %i[show edit update destroy]

  def index
    @vehicles = policy_scope(Vehicle)
  end

  def show
    authorize @vehicle
  end

  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    authorize @vehicle
    if @vehicle.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @vehicle
  end

  def update
    authorize @vehicle
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
  end

  def destroy
    authorize @vehicle
    @vehicle.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:type_of_vehicle, :title, :image_url, :price_per_day, :location, :brand, :model, :description, :year)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def set_authorization
    authorize @vehicle
  end
end
