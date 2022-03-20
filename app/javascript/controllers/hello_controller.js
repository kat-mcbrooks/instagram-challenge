import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!! this is referenced with a div element data-controller='hello' in the view"
  }
}
