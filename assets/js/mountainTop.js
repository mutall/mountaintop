//change the content and not href of the page
//after deep consultaion with muraya the problem was i was reloading the page and 
//what i needed to do was reload the content and leave the header and footer be
//
window.onload=function(){
  changeContent();  
};
function changeContent(item){
    
    //create a switch statement for the click events
    switch (item) {
        case "home":
            document.getElementsByClassName('container').innerHtml="<?php require 'home.php'; ?>";
            break;
            
        case "about":
            document.getElementsByClassName('container').innerHtml="<?php require 'about.php'; ?>";
            break;
            
        case "tour":
            document.getElementsByClassName('container').innerHtml="<?php require 'tours.php'; ?>";
            break;
            
        case "gallery":
            document.getElementsByClassName('container').innerHtml="<?php require 'gallery.php'; ?>";
            break;
            
        case "book":
            document.getElementsByClassName('container').innerHtml="<?php require 'booking.php'; ?>";
            break;
            
        case "contact":
            document.getElementsByClassName('container').innerHtml="<?php require 'contact.php'; ?>";
            break;
            
        default:
            document.getElementsByClassName('container').innerHtml="<?php require 'home.php'; ?>";
            break;
    }
}


////window.onload=function(){
//  myList=document.getElementsByTagName('li');
//   for (var i = 0; i < myList.length; i++) {
//        myList[i].addEventListener("click", /**
//         * Set the attribute to active when clicked
//         */
//                function name() {
//                    document.querySelector(".active").removeAttribute('class');
//                    this.setAttribute('class', 'active');
//                });
//    }
//};

function changeSelector(selector){
    console.log("test");
    var x=document.querySelector("li[class='active'");
    
    console.log(x);
    x.removeAttribute('class');
    
    selector.setAttribute('class', 'active');
}

//toast snackbar for booking page
function toast() {
    // Get the snackbar DIV
    var x = document.getElementById("snackbar")

    // Add the "show" class to DIV
    x.className = "show";

    // After 3 seconds, remove the show class from DIV
    setTimeout(function () {
        x.className = x.className.replace("show", "");
    }, 4000);
}

function populate(id, url) {
    //create a new xmlhttp object to allow communication with
    //the server

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById(id).innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", url + id);
    xhttp.send();

}

function confirm() {
    pass1 = document.getElementById("pass1").value;
    pass2 = document.getElementById("pass2").value;

    if (pass1 !== pass2) {
        alert("Passwords dont match");
    }

}
