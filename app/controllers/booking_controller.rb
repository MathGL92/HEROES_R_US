class BookingsController < ApplicationController
  
  def create
    @booking = Booking.new(booking_params)
    @hero = Hero.find(params[:id])
    @user = current_user
    @booking.user_id = @user.id
    @booking.hero_id = @hero.id
    @total_price = @hero.price * (@booking.end_date - @booking.start_date)
    @booking.save
    redirect_to hero_path(@hero)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :hero_id)
  end
end


