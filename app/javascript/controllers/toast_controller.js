import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.fadeIn()
    setTimeout(() => {
      this.fadeOut(() => {
        this.element.remove()
      })
    }, 5000)
  }

  fadeIn() {
    this.element.classList.add('opacity-0', 'translate-y-[-20px]')
    requestAnimationFrame(() => {
      this.element.classList.add('transition', 'duration-500')
      this.element.classList.remove('opacity-0', 'translate-y-[-20px]')
      this.element.classList.add('opacity-100', 'translate-y-0')
    })
  }

  fadeOut(callback) {
    this.element.classList.add('transition', 'duration-500')
    this.element.classList.remove('opacity-100', 'translate-y-0')
    this.element.classList.add('opacity-0', 'translate-y-[-20px]')

    setTimeout(callback, 500)
  }
} 
