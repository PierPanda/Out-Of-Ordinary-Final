class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude
      }
    ]
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to root_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :address, :places, :photo)
  end
end
