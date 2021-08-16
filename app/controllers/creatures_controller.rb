class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:creature_id])
  end

  # def create
  #   @creature = Creature.new(creature_params)
  #   if @creature.save
  #     redirect_to root_path(@creature)
  #   else
  #     render :new
  #   end
  # end

  # private

  # def creature_params
  #   params.require(:creature).permit(:name, :type, :address, :power, :age, :photo, :description, :price_per_day)
  # end

end
