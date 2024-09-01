class DashboardsController < ApplicationController
  def my_bookings
    @bookings = current_user.bookings
    @offers_bookings = current_user.offers_bookings
    @my_offers = current_user.offers
  end
end
