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
function appendText(data){
  document.getElementById("id_books_list").innerHTML = ""
  for (var i = 0; i <data.length; i++){
    var node = document.createElement("div");
    var textNode = document.createTextNode(data[i].name);
    node.appendChild(textNode);
    document.getElementById("id_books_list").appendChild(node)
  }
}


$(document).ready(function(){

  $(document).on("keyup", "#id_keyword", function(event){
    const keyword = event.target.value;
    $.post("/search", {aaa: keyword}, function(data, status){
      appendText(data)
    });
  });

  $(document).on("change", "input[type=radio][name=gender]", function(event){
    const gender = event.target.value;
    $.post('/search_user', {sex: gender}, function(data, status){
      appendText(data)
    });
  });
});
