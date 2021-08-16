class CreaturesController < ApplicationController
  def index
    @creatures = Creatures.all
  end

  def show
    @creature = Creature.find(params[:id])
  end
end
