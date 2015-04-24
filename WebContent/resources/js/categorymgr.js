$('#cateTable').dataTable({
	"aaSorting": [[1,'asc']],
	"columnDefs": [ { "targets": 0, "orderable": false } ]
});

$('#btnAdd').on('click', function (e) {
	$('#myModal').modal('show');
});
