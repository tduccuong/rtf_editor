import css from "../css/app.css"

import "phoenix_html"
import {Socket} from "phoenix"
import LiveSocket from "phoenix_live_view"

let Hooks = {}
Hooks.RichTxtEditor = {
  mounted() {
    let self = this
    console.log('Start rich text editor on: ' + self.el.id)
    const editor = new Jodit('#' + self.el.id)
  }
}

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
let liveSocket = new LiveSocket("/live", Socket, {
  params: {_csrf_token: csrfToken},
  hooks:  Hooks
});
liveSocket.connect();

window.__socket = require("phoenix").Socket;