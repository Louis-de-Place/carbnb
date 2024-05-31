import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickrRangePlugin";

export default class extends Controller {
  static targets = ["startDateInput", "endDateInput"];

  connect() {
    flatpickr(this.startDateInputTarget, {
      minDate: "today",
      disable: JSON.parse(document.getElementById("disable").dataset.source),
      inline: true,
      plugins: [new rangePlugin({ input: this.endDateInputTarget })],
      onClose: function (date) {
        var price = parseInt(document.getElementById("price").innerText);
        var dateStart = new Date(date[0]);
        var dateEnd = new Date(date[1]);
        var timeDifference = dateEnd.getTime() - dateStart.getTime();
        var days = Math.floor(timeDifference / (1000 * 3600 * 24)) + 1;
        document.getElementById("result").innerHTML =
          `<div class="text-start pb-2 border-bottom">Number of days: ${days}</div>
          <div class="text-start mt-1" id="result">Total price: ${
            days * price
          } $</div>`;
      },
    });
  }
}
