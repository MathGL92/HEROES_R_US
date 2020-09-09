class HeroesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_hero, only: [:show, :edit, :update]
  def index
    @heroes = Hero.all
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



  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name, :power, :description, :address, :price, :photo)
  end
end
