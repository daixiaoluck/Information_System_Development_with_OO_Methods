let $j_unlock = $(".j-unlock")
let $leave_modal = $("#leave_modal")

$j_unlock.click(function(event){
    let $fieldset = $(this).closest(".form-group").siblings("fieldset")
    $fieldset.removeAttr("disabled")
})

$leave_modal.on('show.bs.modal',function(event){
    let $button = $(event.relatedTarget)
    let applytype = $button.data('applytype')
    let $this = $(this)
    $this.find('[type=hidden]').val(applytype)
})