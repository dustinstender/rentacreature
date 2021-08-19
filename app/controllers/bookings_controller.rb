class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @creature = Creature.find(params[:id])
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.new
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @creature = Creature.find(params[:creature_id])
    @booking.creature = @creature
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render 'creatures/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
