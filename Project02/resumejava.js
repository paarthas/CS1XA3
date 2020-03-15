 // FEATURE 1 :
function myFunction() {
    var element = document.body;                                                   
    element.classList.toggle("dark-mode");
    var btn = document.getElementById("dark");
   
                if (btn.value == "Dark Mode") {
                    btn.value = "Light Mode";
                    btn.innerHTML = "Light Mode";
                }
                else {
                    btn.value = "Dark Mode";
                    btn.innerHTML = "Dark Mode";                                               
                }
  }

  function change() 
{
    var elem = document.getElementById("dark");
    if (elem.value=="Dark Mode") elem.value = "Light Mode";
    else elem.value = "Dark Mode";
}
  
  // FEATURE 2:
  mybutton = document.getElementById("myBtn");
  
  // When the user scrolls down 20px from the top of the document, this shows the button
  window.onscroll = function() {scrollFunction()};
  
  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {               
      mybutton.style.display = "block";
    } else {
      mybutton.style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }

 // FEATURE 3:  

function rotate() {
    $("#rotate").animate({ borderSpacing: -360 },{
        step: function(now,fx) {
          $(this).css('transform',`rotate(${now}deg)`);
        },
        duration: 2000
    },'linear');
     window.setTimeout(function() { 
         $("#rotate").css("borderSpacing", "0"); 
         rotate() }, 1000)
}

$(()=>{
    rotate()
})

// FEATURE 4:

const TypingText = document.querySelector(".typed-text");
const AutoTyping = document.querySelector(".TypeCursor");
 
const textArray = ["hard.", "Life.", "Emotion.", "Passion."];
const typingDelay = 200;
const erasingDelay = 100;
const newTextDelay = 2000; 
let textArrayIndex = 0;
let charIndex = 0;
 
function type() {
  if (charIndex < textArray[textArrayIndex].length) {
    if(!AutoTyping.classList.contains("typing")) AutoTyping.classList.add("typing");
    TypingText.textContent += textArray[textArrayIndex].charAt(charIndex);
    charIndex++;
    setTimeout(type, typingDelay);
  } 
  else {
    AutoTyping.classList.remove("typing");
  	setTimeout(erase, newTextDelay);
  }
}
 
function erase() {
	if (charIndex > 0) {
    if(!AutoTyping.classList.contains("typing")) AutoTyping.classList.add("typing");
    TypingText.textContent = textArray[textArrayIndex].substring(0, charIndex-1);
    charIndex--;
    setTimeout(erase, erasingDelay);
  } 
  else {
    AutoTyping.classList.remove("typing");
    textArrayIndex++;
    if(textArrayIndex>=textArray.length) textArrayIndex=0;
    setTimeout(type, typingDelay + 1100);
  }
}
 
document.addEventListener("DOMContentLoaded", function() { 
  if(textArray.length) setTimeout(type, newTextDelay + 250);
});


