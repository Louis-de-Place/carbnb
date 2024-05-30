import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["map", "list"];

  fire() {
    this.mapTarget.classList.toggle("disapear");
    this.listTarget.classList.toggle("disapear");
  }
}
