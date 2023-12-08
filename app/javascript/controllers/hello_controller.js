import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "name", "output" ]

  connect() {
    console.log("test");
  }
  greet() {
    this.outputTarget.textContent =
      `Hello, ${this.nameTarget.value}!`
  }
}
