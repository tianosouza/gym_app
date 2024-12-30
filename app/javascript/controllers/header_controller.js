import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  static targets = [ "menu" ]
  connect() {
    this.closeMenu();
  }

  closeMenu() {
    const main = document.querySelector("main")
    this.menuTarget.classList.add("hidden")
    main.classList.remove("blur")
  }

  opemMenu() {
    const main = document.querySelector("main")
    this.menuTarget.classList.remove("hidden")
    main.classList.add("blur")

  }
}
