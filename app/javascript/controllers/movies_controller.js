import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "form", "query" ]

  search() {
    if (this.queryTarget.value.length < 3) return

    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.formTarget.requestSubmit()
    }, 300)
  }
}