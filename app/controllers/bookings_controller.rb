class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    authorize @booking
    @creature = Creature.find(params[:id])
  end

  def new
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @creature = Creature.find(params[:creature_id])
    @booking.creature = @creature
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render '/bookings'
    end
  end

  def destroy
    authorize @booking
    @booking = Booking.find(params[:id])
    @creature = @booking.creature
    @booking.destroy
    redirect_to creature_path(@creature)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)

  end
end
