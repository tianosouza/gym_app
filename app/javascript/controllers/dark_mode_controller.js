import { Controller } from "@hotwired/stimulus"

  export default class extends Controller {
    static targets = ["icon"]

    connect() {
      this.logoDark = document.getElementById('logo-dark')
      this.logoLight = document.getElementById('logo-light')
      this.updateTheme()
    }

    toggle() {
      const isDark = localStorage.theme === 'dark'
      localStorage.theme = isDark ? 'light' : 'dark'
      this.updateTheme()
    }

    updateTheme() {
      const isDark = localStorage.theme === 'dark'
      const lightTheme = document.getElementById("light-theme")
      const darkTheme = document.getElementById("dark-theme")

      lightTheme.classList.toggle("hidden", !isDark)
      darkTheme.classList.toggle("hidden", isDark)
      document.documentElement.classList.toggle("dark", isDark)

      if (this.logoDark && this.logoLight) {
        this.logoDark.classList.toggle("hidden", isDark)
        this.logoLight.classList.toggle("hidden", !isDark)
      }
    }
  }