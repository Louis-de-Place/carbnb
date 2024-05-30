import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["availabilityStartInput", "availabilityEndInput"];

  connect() {
    flatpickr(this.element);
  }
}
