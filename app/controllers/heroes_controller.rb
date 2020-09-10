class HeroesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.user = current_user
    if @hero.save
      redirect_to user_dashboard_index_path(current_user)
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @heroes = Hero.search_by_name_and_power("#{params[:query]}")
    else
      @heroes = Hero.all
    end

    @markers = @heroes.geocoded.map do |hero|
      {
        lat: hero.latitude,
        lng: hero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hero: hero }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def edit
  end

  def update
    @hero.update(hero_params)

    redirect_to hero_path(@hero)
  end

  def show
    @booking = Booking.new

  end

  def destroy
    @hero.destroy
    redirect_to  user_dashboard_index_path(current_user)
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name, :power, :description, :address, :price, :photo)
  end
end
