$(document).ready(function() {
    $('#carriage_type').change(function() {
        var type;
        type = $(this).val();
        console.log(type);

        if (type == 'CompartmentCarriage') {
            $('.top_seats_field').show();
            $('.bottom_seats_field').show();
            $('.economy_carriages_fields').hide();
            $('.seat_carriages_fields').hide();


        } else if (type == 'EconomyCarriage') {
            $('.top_seats_field').show();
            $('.bottom_seats_field').show();
            $('.economy_carriages_fields').show();
            $('.seat_carriages_fields').hide();


        } else if (type == 'SvCarriage') {
            $('.top_seats_field').hide();
            $('.bottom_seats_field').show();
            $('.economy_carriages_fields').hide();
            $('.seat_carriages_fields').hide();

        } else if (type == 'SeatCarriage') {
            $('.top_seats_field').hide();
            $('.bottom_seats_field').hide();
            $('.economy_carriages_fields').hide();
            $('.seat_carriages_fields').show();
        }

    });
});