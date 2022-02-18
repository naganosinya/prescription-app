// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  var count = 5;
    var countdown = function(){
      document.getElementById('sec').textContent = count.toString();
      console.log(count--);
      var id = setTimeout(countdown, 1000);
      if(count < 0){
        clearTimeout(id);
      }
    }
    countdown();
})