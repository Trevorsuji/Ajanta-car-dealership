// AOS
function animateOnscroll(){
	AOS.init({
	        offset: 100,
	        delay: 0,
	        duration: 1500,
            once: true
	});
}
animateOnscroll();

// MANUS
function openNav() {
  document.getElementById("myNav").style.height = "100%";
}
function closeNav() {
  document.getElementById("myNav").style.height = "0%";
}

// SHOWCASE
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (slideIndex > slides.length-1) {
	  slideIndex = 0;
  }
  if (slideIndex < 0) {
	  slideIndex = slides.length-1;
  }
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  slides[slideIndex].style.display = "block";
  slideIndex++;
  setTimeout(showSlides, 4000);
}

// SMOOTHSCROLL
function smoothScroll(target, duration){
    var target = document.querySelector(target),
    	targetPosition  = target.getBoundingClientRect().top,
     	startPosition = window.pageYOffset,
    	distance = targetPosition,
    	startTime = null;
    function animation(currentTime){
        if(startTime==null){
            startTime = currentTime;
        }
        var timeElapsed = currentTime - startTime;
        var run = ease(timeElapsed, startPosition, distance-42, duration);
        window.scrollTo(0, run);
        if(timeElapsed < duration) requestAnimationFrame(animation);
    }
    function ease(t, b, c, d) {
    	t /= d/2;
    	if (t < 1) return c/2*t*t + b;
    	t--;
    	return -c/2 * (t*(t-2) - 1) + b;
    }
    requestAnimationFrame(animation);
}
var box1 = document.querySelector('.to-home'),
	box4 = document.querySelector('.to-cars'),
	box3 = document.querySelector('.to-login'),
	box5 = document.querySelector('.to-my-thoughts'),
	box6 = document.querySelector('.to-gallary'),
	box2 = document.querySelector('.to-stories');

box1.addEventListener('click', function(){
	smoothScroll('.head', 1000);
});
box4.addEventListener('click', function(){
	smoothScroll('.cars', 1200);
});
box3.addEventListener('click', function(){
	smoothScroll('.slideshow-container', 1200);
});
box5.addEventListener('click', function(){
	smoothScroll('.my-thoughts', 1200);
});
box6.addEventListener('click', function(){
	smoothScroll('.gallary', 1200);
});
box2.addEventListener('click', function(){
	smoothScroll('.stories', 1000);
});

// ACTIVE PAGE
function deactive(){
	box1.classList.remove('active-tab');
	box2.classList.remove('active-tab');
	box3.classList.remove('active-tab');
	box4.classList.remove('active-tab');
	box5.classList.remove('active-tab');
	box6.classList.remove('active-tab');
}
var box1p = document.querySelector('.head').offsetTop,
	box4p = document.querySelector('.cars').offsetTop,
	box3p = document.querySelector('#login').offsetTop,
	box5p = document.querySelector('.my-thoughts').offsetTop,
	box6p = document.querySelector('.gallary').offsetTop,
	box2p = document.querySelector('.stories').offsetTop;
//console.log(box3p);
box1.classList.add('active-tab');
window.onscroll = ()=>{
	var height = window.pageYOffset;
	if(height > 420){
		document.querySelector('header h1').style.display = 'none';
		document.querySelector('header').style.height = '44px';
		document.querySelector('header').style.background = '#fff';
		document.querySelector('header').style.position = 'fixed';
	}
	else{
		document.querySelector('header h1').style.display = 'block';
		document.querySelector('header').style.height = '100vh';
		document.querySelector('header').style.backgroundImage = "url('assets/Display_images/header.jpg')";
		document.querySelector('header').style.backgroundSize = "cover";
		document.querySelector('header').style.backgroundPosition = "center";
		document.querySelector('header').style.position = 'static';
	}
	//console.log(height);
	if(height >= box1p -200 && height < box3p -200){
		deactive();
		box1.classList.add('active-tab');
	}
	else if(height >= box3p -200 && height < box2p -200){
		deactive();
		box3.classList.add('active-tab');
	}
	else if(height >= box2p -300 && height < box4p -300){
		deactive();
		box2.classList.add('active-tab');
	}
	else if(height >= box4p -300 && height < box5p -300){
		deactive();
		box4.classList.add('active-tab');
	}
	else if(height >= box5p -200 && height < box6p -200){
		deactive();
		box5.classList.add('active-tab');
	}
	else if(height >= box6p -200 && height < box6p + 500){
		deactive();
		box6.classList.add('active-tab');
	}
}

// FORM VALIDATION FUNCTIONS
function validateLoginForm() {
    const email = document.querySelector('.login-form [name="email"]').value;
    const password = document.querySelector('.login-form [name="password"]').value;
    
    let isValid = true;
    
    // Clear previous errors
    clearErrors('.login-form');
    
    if (!email) {
        showError('.login-form [name="email"]', 'Email is required');
        isValid = false;
    } else if (!isValidEmail(email)) {
        showError('.login-form [name="email"]', 'Please enter a valid email');
        isValid = false;
    }
    
    if (!password) {
        showError('.login-form [name="password"]', 'Password is required');
        isValid = false;
    }
    
    return isValid;
}

function validateSignupForm() {
    const username = document.querySelector('.signup-form [name="username"]').value;
    const email = document.querySelector('.signup-form [name="email"]').value;
    const password = document.querySelector('.signup-form [name="password"]').value;
    const rePassword = document.querySelector('.signup-form [name="re-password"]').value;
    
    let isValid = true;
    
    // Clear previous errors
    clearErrors('.signup-form');
    
    if (!username) {
        showError('.signup-form [name="username"]', 'Username is required');
        isValid = false;
    } else if (username.length < 3) {
        showError('.signup-form [name="username"]', 'Username must be at least 3 characters');
        isValid = false;
    } else if (!/^[A-Za-z0-9_]+$/.test(username)) {
        showError('.signup-form [name="username"]', 'Username can only contain letters, numbers, and underscores');
        isValid = false;
    }
    
    if (!email) {
        showError('.signup-form [name="email"]', 'Email is required');
        isValid = false;
    } else if (!isValidEmail(email)) {
        showError('.signup-form [name="email"]', 'Please enter a valid email');
        isValid = false;
    }
    
    if (!password) {
        showError('.signup-form [name="password"]', 'Password is required');
        isValid = false;
    } else if (password.length < 8) {
        showError('.signup-form [name="password"]', 'Password must be at least 8 characters');
        isValid = false;
    } else if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])/.test(password)) {
        showError('.signup-form [name="password"]', 'Password must contain uppercase, lowercase, number and special character');
        isValid = false;
    }
    
    if (!rePassword) {
        showError('.signup-form [name="re-password"]', 'Please retype your password');
        isValid = false;
    } else if (password !== rePassword) {
        showError('.signup-form [name="re-password"]', 'Passwords do not match');
        isValid = false;
    }
    
    return isValid;
}

function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function showError(selector, message) {
    const element = document.querySelector(selector);
    if (element) {
        element.style.borderColor = '#f54c4c';
        let errorElement = element.parentNode.querySelector('.field-error');
        if (!errorElement) {
            errorElement = document.createElement('div');
            errorElement.className = 'field-error';
            errorElement.style.color = '#f54c4c';
            errorElement.style.fontSize = '12px';
            errorElement.style.marginTop = '5px';
            element.parentNode.appendChild(errorElement);
        }
        errorElement.textContent = message;
    }
}

function clearErrors(formSelector) {
    const form = document.querySelector(formSelector);
    if (form) {
        const inputs = form.querySelectorAll('input');
        inputs.forEach(input => {
            input.style.borderColor = '#ddd';
        });
        const errors = form.querySelectorAll('.field-error');
        errors.forEach(error => error.remove());
    }
}

// STORIES
const controls=document.querySelector(".stories-controls"),
	container=document.querySelector(".stories-container"),
	allBox=container.children,
	containerWidth=container.offsetWidth,
	margin=30;
var items=0,
	totalItems=0,
	jumpSlideWidth=0;

responsive=[
{breakPoint:{width:0,item:2}},
{breakPoint:{width:700,item:4}},
{breakPoint:{width:1000,item:5}}
]

function load(){
   for(let i=0; i<responsive.length;i++){
	  if(window.innerWidth>responsive[i].breakPoint.width){
		  items=responsive[i].breakPoint.item
	  }
   }
   start();
}

function start(){
   	var totalItemsWidth=0;
   	for(let i=0;i<allBox.length;i++){
	   	allBox[i].style.width=(containerWidth/items)-margin + "px";
	   	allBox[i].style.margin=(margin/2)+ "px";
	   	totalItemsWidth+=containerWidth/items;
	   	totalItems++;
	}

  	container.style.width=totalItemsWidth + "px";

   	const allSlides=Math.ceil(totalItems/items);
   	const ul=document.createElement("ul");
	for(let i=1;i<=allSlides;i++){
		const li=document.createElement("li");
		li.id=i;
		li.innerHTML=i;
		li.setAttribute("onclick","controlSlides(this)");
		ul.appendChild(li);
		if(i==1){
			li.className="active";
		}
		//console.log(li);
	 }
	 controls.appendChild(ul);
}

function controlSlides(ele){
	 const ul=controls.children;
     const li=ul[0].children

	 var active;

	 for(let i=0;i<li.length;i++){
	  	if(li[i].className=="active"){
		  	active=i;
		  	li[i].className="";
	  	}
	 }
	 ele.className="active";

	 var numb=(ele.id-1)-active;
	 jumpSlideWidth=jumpSlideWidth+(containerWidth*numb);
	 container.style.marginLeft=-jumpSlideWidth + "px";
	 container.style.transition = "1s";
}

window.onload=load();

// LOGIN SINGUP tab swap
var login = document.querySelector('.login-signup .login'),
	signup = document.querySelector('.login-signup .signup');
login.addEventListener('click', function(){
	document.querySelector('.signup-form').style.display = 'none';
	document.querySelector('.login-form').style.display = 'block';
	login.classList.add('active-form');
	signup.classList.remove('active-form');
});
signup.addEventListener('click', function(){
	document.querySelector('.signup-form').style.display = 'block';
	document.querySelector('.login-form').style.display = 'none';
	login.classList.remove('active-form');
	signup.classList.add('active-form');
});

//CARS tab swap
var regular = document.querySelector('.cars .regular');
var sports = document.querySelector('.cars .sports');
var offroad = document.querySelector('.cars .off-road');
regular.addEventListener('click', function(){
	document.querySelector('.cars-container3').style.display = 'none';
	document.querySelector('.cars-container2').style.display = 'none';
	document.querySelector('.cars-container1').style.display = 'block';
	regular.classList.add('active-cars');
	sports.classList.remove('active-cars');
	offroad.classList.remove('active-cars');
});
sports.addEventListener('click', function(){
	document.querySelector('.cars-container3').style.display = 'none';
	document.querySelector('.cars-container2').style.display = 'block';
	document.querySelector('.cars-container1').style.display = 'none';
	regular.classList.remove('active-cars');
	sports.classList.add('active-cars');
	offroad.classList.remove('active-cars');
});
offroad.addEventListener('click', function(){
	document.querySelector('.cars-container2').style.display = 'none';
	document.querySelector('.cars-container1').style.display = 'none';
	document.querySelector('.cars-container3').style.display = 'block';
	regular.classList.remove('active-cars');
	sports.classList.remove('active-cars');
	offroad.classList.add('active-cars');
});


// GALLARY IMAGES
var images = document.querySelectorAll('.gallary-img img'),
	windowWidth = window.innerWidth;

//console.log(images);
if(images){
	images.forEach(function(image, index){
		image.onclick = function(){
			var imageUrl = image.src;
			//console.log(imageUrl);
			var cutUrl = imageUrl.split("website/");
			cutUrl = cutUrl[1].replace("%20", " ");

			var container = document.body;
			var imageWindow = document.createElement('div');

			container.appendChild(imageWindow);
			imageWindow.setAttribute('class', 'full-view');
			imageWindow.setAttribute('onclick', 'closeView()');

			var fullImg = document.createElement('img');
			imageWindow.appendChild(fullImg);
			fullImg.setAttribute('src', cutUrl);
		}
	});
}
function closeView(){
	document.querySelector('.full-view').remove();
}


// PRODUCT CROSOL
var products = document.querySelector('.products'),
	items = products.querySelectorAll('.item'),
	next_product = document.querySelector('#next-product'),
	pre_product = document.querySelector('#pre-product'),
	screenWidth = document.body.offsetWidth;

var header_nav = document.querySelector('header');
header_nav.style.width = screenWidth + 'px';

var width = (items.length+1) * 210;
products.style.width = width + "px";

pre_product.style.color = "gray";

var pre_click = screenWidth;

var margin_now = 0;
next_product.addEventListener('click', function(){
	if(margin_now > -width + pre_click + 200){
		margin_now -= pre_click;
		products.style.marginLeft = margin_now + "px";
		products.style.transition = "1s";
		pre_product.style.color = "green";
	}
	else {
		next_product.style.color = "gray";
	}
});
pre_product.addEventListener('click', function(){
	if(margin_now < 0){
		margin_now += pre_click;
		products.style.marginLeft = margin_now + "px";
		products.style.transition = "1s";
		next_product.style.color = "green";
	}
	else{
		margin_now = 0;
		pre_product.style.color = "gray";
	}
});
