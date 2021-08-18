class CreaturesController < ApplicationController
  def index
    @creatures = policy_scope(Creature).order(created_at: :desc)

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @creature = Creature.find(params[:id])
    authorize @creature
  end

  def search
    @creatures = Creature.where(power: params[:power])
    authorize @creatures
  end

  def search_species
    @creatures = Creature.where(species: params[:species])
    authorize @creatures
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :type, :address, :power, :age, :photo, :description, :price_per_day)
  end

end
