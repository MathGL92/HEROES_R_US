class HeroesController < ApplicationController
    skip_before_action :authenticate_user!, only: :index
    before_action :set_hero, only:[:show]
    def index
        @heroes = Hero.all
    end

    def show
    end

    private

    def set_hero
        @hero = Hero.find(params[:id])
    end
end
