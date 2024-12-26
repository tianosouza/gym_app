import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  static targets = [ "menu" ]
  connect() {
    console.log('conected')
  }

  closeMenu() {
    this.menuTarget.classList.add("hidden")
  }

  opemMenu() {
    this.menuTarget.classList.remove("hidden")
  }
}
