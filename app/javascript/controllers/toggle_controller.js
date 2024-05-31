import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["one", "two"];

  fire() {
    this.oneTarget.classList.toggle("disapear");
    this.twoTarget.classList.toggle("disapear");
  }
}
