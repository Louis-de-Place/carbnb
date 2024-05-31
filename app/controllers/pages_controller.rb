class PagesController < ApplicationController
  def home
    @disable_nav = true
  end

  def dashboard
    @offers = current_user.offers
    @offers_bookings = @offers.map(&:bookings).flatten
    @booking_requests = current_user.bookings
  end
end
