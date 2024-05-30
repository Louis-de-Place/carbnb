class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :destroy]
  def index
    @offers = Offer.all
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "info_windows", locals: { offer: }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @review = Review.new
    @booking = Booking.new
    @bookings = @offer.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer), notice: "Congrats! Your offer is online."
    else
      redirect_to new_offer_path, alert: "Failed. Fill in all fields *"
    end
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:brand, :model, :year, :km, :price, :address, :description, :availability_end, :availability_start, photos: [])
  end
end
