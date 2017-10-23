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
            document.getElementById(id).innerHTML=this.responseText;
        }
    };
    
    xhttp.open("GET", url+id);
    xhttp.send();

}

function confirm() {
    pass1 = document.getElementById("pass1").value;
    pass2 = document.getElementById("pass2").value;

    if (pass1 == pass2) {
        alert("yeah")
    } else {
        alert("Passwords dont match");

    }

}
function parent(val) {
    var tr=val.parentNode.parentNode;
    
    var td=tr.querySelector('td[mail]');
    console.log(td);
    
}