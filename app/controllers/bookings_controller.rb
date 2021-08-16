class BookingsController < ApplicationController
  def new
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.new
  end

  def show
    @creature = Creature.find(params[:id])
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
    @booking = Booking.find(params[:id])
    @creature = @booking.creature
    @booking.destroy
    redirect_to creature_path(@creature)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_start, :price)
  end
end
