import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["icon"]

  connect() {
    this.apply(this.stored())
  }

  toggle() {
    const next = this.stored() === "dark" ? "light" : "dark"
    localStorage.setItem("td-theme", next)
    this.apply(next)
  }

  stored() {
    const saved = localStorage.getItem("td-theme")
    if (saved) return saved
    return window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"
  }

  apply(theme) {
    if (theme === "dark") {
      document.documentElement.classList.add("dark")
    } else {
      document.documentElement.classList.remove("dark")
    }
    this.iconTargets.forEach(el => {
      el.setAttribute("data-theme", theme)
    })
  }
}
