import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const value = document.getElementById("value");
    const input = document.getElementById("price");
    value.value = input.value;
    input.addEventListener("input", (event) => {
      value.value = event.target.value;
    });
    value.addEventListener("focusout", (event) => {
      input.value = event.target.value;
    });
  }
}
