import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["details"]
  
  toggle() {
    console.log("Toggle details")
    this.detailsTarget.classList.toggle("hidden")
  }
}