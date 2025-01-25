$( document ).ready(function() {

    $(document).on('click', '.pagination-href',function (e){
        e.preventDefault();
        let urlLink = $(this).attr('data-pagination');
        getQuery(urlLink);
    })
});


function getQuery(urlLink, metod = 'GET', dataTypeNmae = 'html') {
    $.ajaxSetup({
        headers: {
            'X-Requested-With': 'XMLHttpRequest'
        }
    });

    let baseUrl = '/user/'

    $.ajax({
        url: baseUrl+urlLink,
        method: metod,
        dataType: dataTypeNmae,
        beforeSend: function () {
            $('#wait').show();
        },
        complete: function () {
            $('#wait').hide();
        },
        success: function (data) {
            let json = JSON.parse(data);
            if (json.data.length > 0) {
                 $('#div-table-users-id-ajax').html(json.data);
            }
            if (json.pagination.length > 0) {
                $('#pagination-id-ajax').html(json.pagination);
            }
        }
    });
}