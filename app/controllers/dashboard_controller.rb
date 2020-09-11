class DashboardController < ApplicationController

    def index
      @review = Review.new
      @user = User.find(params[:user_id])
    end

end
