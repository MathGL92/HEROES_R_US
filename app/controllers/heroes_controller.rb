class HeroesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_hero, only: [:show]
  
  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.user = current_user
    if @hero.save
      redirect_to root_path
    else
      render :new
    end
    # raise
  end
  
  def index
    @heroes = Hero.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name, :power, :description, :address, :price)
  end

 


end
