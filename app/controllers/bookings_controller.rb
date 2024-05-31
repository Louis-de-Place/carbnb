class BookingsController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: "Congrats! Your booking is saved."
    else
      flash.now[:alert] = "Oops, something went wrong."
      render 'offers/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to offer_path(@booking.offer), status: :see_other
  end

  def status_update
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:status])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
