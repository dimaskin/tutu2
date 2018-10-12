$(document).ready(function() {
    $('a.edit_train').click(function(e) {
        e.preventDefault();
        var train_number;
        var form;

        train_number = $(this).data('trainNumber');
        train_id = $(this).data('trainId');
        console.log(train_number);
        form = $('#edit_train_' + train_id);
        title = $('#train_number_' + train_number);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Отменить');
            $(this).addClass('cancel');
        } else {
            $(this).html('Изменить');
            $(this).removeClass('cancel');
        }
        form.toggle();
        title.toggle();
    });
});