import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
    console.log("toast connected");
    setTimeout(() => {
      this.hide()
    }, 3000)
  }
  hide() {
    this.element.classList.add("hidden")
  }
}
