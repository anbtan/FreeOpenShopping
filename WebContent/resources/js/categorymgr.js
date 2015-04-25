$('#cateTable').dataTable({
	"aaSorting": [[1,'asc']],
	"columnDefs": [ { "targets": 0, "orderable": false } ]
});

$('#btnAdd').on('click', function (e) {
	$('#myModal').modal('show');
    $('#myModal').css("margin-top", 200);
});


function centerModal() {
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog");
    var offset = ($(window).height() - $dialog.height()) / 2;
    // Center modal vertically in window
    $dialog.css("margin-top", offset);
}

$('.modal').on('show.bs.modal', centerModal);
$(window).on("resize", function () {
    $('.modal:visible').each(centerModal);
});