class CreaturesController < ApplicationController
  def index
    @creatures = policy_scope(Creature).order(created_at: :desc)
  end

  def show
    @creature = Creature.find(params[:creature_id])
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

  # def create
  #   @creature = Creature.new(creature_params)
  #   if @creature.save
  #     redirect_to root_path(@creature)
  #   else
  #     render :new
  #   end
  # end

  private

  def creature_params
    params.require(:creature).permit(:name, :type, :address, :power, :age, :photo, :description, :price_per_day)
  end

end
