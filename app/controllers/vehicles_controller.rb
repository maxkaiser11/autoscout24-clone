class VehiclesController < ApplicationController
before_action :authenticate_user!, except: :index
before_action :set_vehicle, only: %i[show edit update destroy]

  def index
    @vehicles = policy_scope(Vehicle)

    if params[:query].present?
      sql_subquery = <<~SQL
        vehicles.brand ILIKE :query
        OR vehicles.model ILIKE :query
      SQL
      @vehicles = @vehicles.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @reservation = Reservation.new
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

  def create_reservation
    set_vehicle
    authorize @vehicle
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.vehicle = @vehicle
    if @reservation.save
      redirect_to reservations_path
    else
      render :show
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


  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :accepted)
  end

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
