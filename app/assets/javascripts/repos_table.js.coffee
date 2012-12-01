jQuery ->
  $("#repos").dataTable
    "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
    # "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>"
    # sPaginationType: "full_numbers"
    sPaginationType: "bootstrap"
    bJQueryUI: true
    # server side processing
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#repos').data('source')

    "aoColumnDefs": [
      { "bSortable": false, "aTargets": [ 0 ] }
    ]
    "iDisplayLength": 10,
    "aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]]
  $.extend( $.fn.dataTableExt.oStdClasses, {
    "sWrapper": "dataTables_wrapper form-inline"
  });
  $("#repos").show()