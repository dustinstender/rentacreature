class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @sample_creature = Creature.first(4)
  end

  def index
    @creatures = Creature.all
  end
end
