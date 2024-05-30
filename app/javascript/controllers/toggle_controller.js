import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["togglableElement", "buttonText", "cards"];

  connect() {
    console.log("Hello from toggle_controller.js");
    console.log(this.cardsTarget)
  }

  fire() {
    this.togglableElementTarget.classList.toggle("disapear");
    this.updateButtonText();
    this.cardsTarget.classList.toggle("disapear");
  }

  updateButtonText() {
    if (this.togglableElementTarget.classList.contains("disapear")) {
      this.buttonTextTarget.textContent = "View on map";
    } else {
      this.buttonTextTarget.textContent = "View on list";
    }
  }
}
