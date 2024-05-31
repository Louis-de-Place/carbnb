import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ["bookingStatus", "buttons"];
  static values = { id: Number };

  accept() {
    console.log(this.element);
    this.bookingStatusTarget.classList.remove("pending");
    this.bookingStatusTarget.classList.add("accepted");
    this.buttonsTarget.classList.add("d-none");
    Booking.find(this.idValue).status = true;
  }

  decline() {
    this.bookingStatusTarget.classList.remove("pending");
    this.bookingStatusTarget.classList.add("declined");
    this.buttonsTarget.classList.add("d-none");
    Booking.find(this.idValue).status = false;
  }
}
