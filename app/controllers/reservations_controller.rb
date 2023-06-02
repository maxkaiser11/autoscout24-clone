class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy]
  before_action :set_vehicle, only: %i[new create]

  def index
    @reservations = policy_scope(Reservation).where(user_id: current_user.id)
    @requests = policy_scope(Reservation).where.not(user_id: current_user.id)
  end

  def show
    authorize @reservation
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.vehicle = @vehicle
    authorize @reservation
    if @reservation.save!
      redirect_to reservations_path
    else
      render :new
    end
  end

  def accept
    @reservation = Reservation.find(params[:id])

    # Authorize the action using the policy
    authorize @reservation

    if @reservation.accepted?
      flash[:error] = "The reservation has already been accepted."
      redirect_to @reservation
    else
      @reservation.update(accepted: true)
      redirect_to reservations_path
    end
  end

  def edit
    authorize @reservation
  end

  def update
    authorize @reservation
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    authorize @reservation
    @reservation.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :accepted)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_autorize
    authorize @reservation
  end
end
