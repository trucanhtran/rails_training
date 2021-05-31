// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery3
//= require popper
//= require bootstrap

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("jquery");

function appendDataProduct(data) {
  document.getElementById("id_books_list").innerHTML = "";
  for(var i = 0; i< data.length; i++) {
    var node = document.createElement("div");
    var textNode = document.createTextNode(data[i].name);
    node.appendChild(textNode);
    document.getElementById("id_books_list").appendChild(node);
  }
}

// bat dau goi jquery, phai dat code goi jquery trong day
//https://www.w3schools.com/jquery/jquery_intro.asp
$(document).ready(function(){
  // goi su kien onkeyup tac dong len the input co id la id_keyword
  // bien event tham khao den the input, dung event lay ra gia tri value cua the input
  $(document).on("keyup", "#id_keyword", function(event) {
    const keyword = event.target.value;
    // dung ham $.post cua jquery de goi ajax, hai bien data la mot mang gia tri tra ve tu server
    // bien status la trang thai tra ve, neu tra ve that bai thi la false, con true la success
    $.post("/search", {aaa: keyword}, function(data, status) {
      appendDataProduct(data);
    });
  });
});
