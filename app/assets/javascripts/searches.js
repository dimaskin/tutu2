$(document).ready(function() {
    $('.search_form').submit(function() {
        var start_station;
        var finish_station;
        start_station = $(this).find('#search_start_rws');
        finish_station = $(this).find('#search_finish_rws');

        //console.log(start_station.val());
        //console.log(finish_station.val());
        if (start_station.val() == finish_station.val()) {
            alert('Выберите конечную станцию!');
            return false;
        }
    })
});