class BookingsController < ApplicationController
  before_action :set_booking, only: [:update, :show]

  def create
    @booking = Booking.new(booking_params)
    @hero = Hero.find(params[:hero_id])
    @user = current_user
    @booking.user_id = @user.id
    @booking.hero_id = @hero.id
    @total_price = @hero.price * (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = @total_price
    @booking.save

  end

  def show
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save

    redirect_to user_dashboard_index_path(current_user)

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :hero_id, :status)
  end
end


