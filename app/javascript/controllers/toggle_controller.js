import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["togglableElement", "buttonText"];

  connect() {
    console.log("Hello from toggle_controller.js");
  }

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
    this.updateButtonText();
  }

  updateButtonText() {
    if (this.togglableElementTarget.classList.contains("d-none")) {
      this.buttonTextTarget.textContent = "View on map";
    } else {
      this.buttonTextTarget.textContent = "View on list";
    }
  }
}
