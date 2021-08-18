class CreaturesController < ApplicationController
  def index
    @creatures = policy_scope(Creature).order(created_at: :desc)
    map
  end

  def show
    @creature = Creature.find(params[:id])
    authorize @creature
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
        lng: creature.longitude
      }
    end
  end

end
