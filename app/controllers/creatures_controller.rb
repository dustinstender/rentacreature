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

  def new
    @user = current_user
    @creature = Creature.new
    authorize @creature
  end

  def create
    @user = current_user
    @creature = Creature.new(creature_params)
    @creature.user = @user
    if @creature.save
      redirect_to creature_path(@creature) 
    else
      render :new
    end
    authorize @creature
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :type, :address, :power, :age, :description, :price_per_day, :profile_pic)
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
    @markers = @creature.search([@creature.latitude, @creature.longitude])
  end
end
