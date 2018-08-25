document.addEventListener('DOMContentLoaded', () => {
	const user = document.getElementById('username');
	const email = document.getElementById('email');
	const phone = document.getElementById('phone');

	user.addEventListener('blur', function() {

		let val = this.value;

		if(!name_valid(val)){
			error(this, "The Name field must be lowercase")
		}else{
			console.log("OK")
			success(this)
		}

	})

	email.addEventListener('blur', function() {

		let val = this.value;

		if(!email_valid(val)){
			error(this, "The Email field should be an email")
		}else{
			success(this)
		}

	})

	phone.addEventListener('blur', function() {

		let val = this.value;

		if(!phone_valid(val)){
			error(this, "The Phone field must be number, space and +")
		}else{
			success(this)
		}

	})


});

// name validation
function name_valid(str) {
	if(/^[a-z]+$/.test(str)) return true
	else return false
}

// email validation
function email_valid(email){
	if(/^([a-z]+\@[a-z]+\.[a-z]+)$/.test(email)) return true
	else return false
}

// phone validation
function phone_valid(phone){
	if(/^[0-9?\s\+]+$/.test(phone)) return true
	else return false
}



function error(el, msg){
	// add class is invalid
	el.parentElement.classList.add('is-invalid')
	// remove class valid
	el.parentElement.classList.remove('is-valid')
	
	el.parentElement.querySelector('.alert').innerHTML = msg
}

function success(el){
	// remove alert exist
	el.parentElement.querySelector('.alert').innerHTML = ''
	el.parentElement.classList.remove('is-invalid');
	el.parentElement.classList.add('is-valid');
}
