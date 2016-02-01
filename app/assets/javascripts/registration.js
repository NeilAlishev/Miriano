/**
 * Created by neil on 01.02.16.
 */
$(document).on('page:change', function() {
    $('#show-passport-field').click(function(event) {
        $('#passport-field').slideToggle();
    });
});