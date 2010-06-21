jQuery(document).ready(function() {
    jQuery('a[rel*=facebox]').facebox()
})


function show_title_availability(status){
    $('#title_availability').html(status);
    $('#title_availability').show();
    alert(status);
}