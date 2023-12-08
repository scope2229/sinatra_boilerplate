import { Application } from "stimulus"

// const application = Application.start()

// import controllers from "**/*_controller.js"
// controllers.forEach((controller) => {
//   application.register(controller.name, controller.module.default)
// });

import HelloController from "./controllers/hello_controller"

const application = Application.start()
application.register("hello", HelloController)