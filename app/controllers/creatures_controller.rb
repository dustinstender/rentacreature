class CreaturesController < ApplicationController
  def index
    @creatures = policy_scope(Creature).order(created_at: :desc)
    if params[:query].present?
      @creatures = Creature.near(params[:query], 4)
    else
      @creatures = Creature.all
    end
    map
  end

  def show
    @creature = Creature.find(params[:id])
    @booking = Booking.new(creature: @creature)
    authorize @creature
    map_one
  end

  def search
    @creatures = Creature.where(power: params[:power])
    authorize @creatures
    map
  end

  def search_species
    @creatures = Creature.where(species: params[:species])
    authorize @creatures
    map
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :type, :address, :power, :age, :photo, :description, :price_per_day)
  end

  def map
    @markers = @creatures.geocoded.map do |creature|
      {
        lat: creature.latitude,
        lng: creature.longitude,
        info_window: render_to_string(partial: "info_window", locals: { creature: creature })
      }
    end
  end

  def map_one
    @markers = @creature.geocoded.map do |creature|
      {
        lat: creature.latitude,
        lng: creature.longitude,
        info_window: render_to_string(partial: "info_window", locals: { creature: creature })
      }
    end
  end
end
