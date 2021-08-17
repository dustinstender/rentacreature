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
    if @booking.save
      redirect_to creature_path(@creature)
    else
      render :new
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

    authorize @booking
    params.require(:booking).permit(:start_date, :end_date, :price)

  end
end
