class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)

    @booking.user = current_user
    @booking.offer = @offer

    if @booking.save
      redirect_to root_path, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(accepted: params[:accepted])
    redirect_to dashboards_my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_persons, :date_start, :date_end)
  end
end
