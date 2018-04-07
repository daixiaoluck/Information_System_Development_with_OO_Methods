let $j_unlock = $(".j-unlock")

$j_unlock.click(function(event){
    let $fieldset = $(this).closest(".form-group").siblings("fieldset")
    $fieldset.removeAttr("disabled")
})