function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var company = document.getElementById("company").value;
    var message = document.getElementById("message").value;
    var regexSpace = /^\s+$/g;
    var regexEmail = /^[a-z0-9_.]+@[a-z0-9]+\.[a-z]{2,4}$/gi;
    var regexPhone = /^\d{10}$/g;
    if (name.match(regexSpace)) {
        window.alert("Name must not contain all white space!");
        return false;
    } else if (email.match(regexSpace) || !email.match(regexEmail)) {
        window.alert("Email must not contain all white space and has form like 'example.01@domain.com'!");
        return false;
    } else if (phone.match(regexSpace) || !phone.match(regexPhone)) {
        window.alert("Phone must not contain all white space and must contain 10 digit number!");
        return false;
    } else if (company.match(regexSpace)) {
        window.alert("Company must not contain all white space!");
        return false;
    } else if (message.match(regexSpace)) {
        window.alert("Message must not contain all white space!");
        return false;
    } else
        return true;
}