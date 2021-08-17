class CreaturesController < ApplicationController
  def index
    @creature = policy_scope(Creature).order(created_at: :desc)
  end

  def show
    @creature = Creature.find(params[:id])
    authorize @creature
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
