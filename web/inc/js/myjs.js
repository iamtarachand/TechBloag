$(document).ready(function(){

    // Validate Password
$('#password, #confirm_password').on('keyup', function () {
    if ($('#password').val() == $('#confirm_password').val()) {  
        $('#message').html('').css('color', 'red');

    } else {        
        $('#message').html('passwords didn’t match!').css('color', 'red');
    }
});

})

// Validate Password
// $('#password, #confirm_password').on('keyup', function () {
//     if ($('#password').val() == $('#confirm_password').val()) {
//       $('#message').html('Matching').css('color', 'green');
//     } else 
//       $('#message').html('Not Matching').css('color', 'red');
//   });