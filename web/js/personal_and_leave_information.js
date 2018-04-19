let $j_unlock = $(".j-unlock")
let $leave_modal = $("#leave_modal")

$j_unlock.click(function(event){
    let $fieldset = $(this).closest(".form-group").siblings("fieldset")
    $fieldset.removeAttr("disabled")
})

$leave_modal.on('show.bs.modal',function(event){
    let $button = $(event.relatedTarget)
    let applytype = $button.data('applytype')
    let $leave_type_span = $("#leave_type_span")
    let $apply_type_hidden = $("#apply_type_hidden")

    $leave_type_span.text(applytype)
    $apply_type_hidden.val(applytype)
})