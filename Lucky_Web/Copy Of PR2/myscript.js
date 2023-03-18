function addnewvalidate() {
  a = document.getElementById("name").value;
  b = document.getElementById("files").value;
  c = document.getElementById("type").value;
  if (a == "" || b == "" || c == "None") {
    alert("Fill aplication Completely");
  } else {
    alert("Successfully Submitted");
    document.getElementById("form").reset();
  }
}
function loginvalidate() {
  a = document.getElementById("Username").value;
  b = document.getElementById("Password").value;
  a1 = 0;
  for (i = 0; i < a.length; i++) {
    if (a[i] == "@") {
      a1 = 1;
    }
  }
  if (a == "") {
    alert("Enter Username");
  } else if (b == "") {
    alert("Enter Password");
  } else if (a1 != 1) {
    alert("Username Must Contain '@' ");
  } else if (b.length < 8) {
    alert("Too Short Password");
  } else {
    redirect();
  }
}
function redirect() {
  window.location.href = "index.html";
}

function registervalidate(){
        a0=document.getElementById("Name").value;
        a1=document.getElementById("Des").value;
        a2=document.getElementById("dept").value;
        a3=document.getElementById("doj").value;
        a4=document.getElementById("noe").value;
        a5=document.getElementById("dob").value;
        a6=document.getElementById("uid").value;
        a7=document.getElementById("email").value;
        a8=document.getElementById("phno").value;
        a9=document.getElementById("afc").value;
        console.log(a3,a4);
        if(a0!=""&&a1!=""&&a2!=""&&a4!=""&&a6!=""&&a7!=""&&a8!=""&&a9!=""&&a3!=""&&a5!=""){
          window.location.href="Login.html";
          alert("User Created SuccessFully");
        }  
        else{
          alert("Enter the details completely");
        }
      }
    
$(function () {
  // Parallax

  $(".services-section").parallax({
    imageSrc: "img/bg-2.jpg",
    speed: 0.2,
  });

  // jQuery Scroll Up / Back To Top Image
  $.scrollUp({
    scrollName: "scrollUp",
    scrollDistance: 300,
    scrollFrom: "top",
    scrollSpeed: 1000,
    easingType: "linear",
    animation: "fade",
    animationSpeed: 300,
    scrollText: "",
    scrollImg: true,
  });

  // ScrollUp Placement
  $(window).on("scroll", function () {
    // If the height of the document less the height of the document is the same as the
    // distance the window has scrolled from the top...
    if ($(document).height() - $(window).height() === $(window).scrollTop()) {
      // Adjust the scrollUp image so that it's a few pixels above the footer
      $("#scrollUp").css("bottom", "80px");
    } else {
      // Otherwise, leave set it to its default value.
      $("#scrollUp").css("bottom", "30px");
    }
  });

  $(".single-page-nav").singlePageNav({
    offset: $(".single-page-nav").outerHeight(),
    speed: 1500,
    filter: ":not(.external)",
    updateHash: true,
  });

  $(".navbar-toggle").click(function () {
    $(".single-page-nav").toggleClass("show");
  });

  $(".single-page-nav a").click(function () {
    $(".single-page-nav").removeClass("show");
  });
});
