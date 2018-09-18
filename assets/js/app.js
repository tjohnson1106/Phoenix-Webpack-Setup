// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import css from "../css/app.css";
import "phoenix_html";

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

// Import Elm

import Elm from "../elm/src/Main.elm";

const ELM_DIV = document.getElementById("elm-main");

if (ELM_DIV) {
  Elm.App.embed(ELM_DIV);
}
