<#include "/included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
</head>
<body>

    <#include "/included_ftl/nav_content.ftl">

    <div class="w-50 mx-auto container">
        <div class="row mb-5">
            <div class="col-2">
                <#if Successornot == "Y">
                    <img src="/image/success.svg">
                <#else>
                    <img src="/image/cancel.svg">
                </#if>
            </div>
            <div class="col-10 align-self-center">
                <span class="h3">${Message}</span>
            </div>
        </div>

        <div class="row justify-content-md-center">
            <div class="col-auto">
                <a href="${request_url["return_main"]}">Return to the main page.</a>
            </div>
        </div>
    </div>

    <#include "/included_ftl/notification_modal_content.ftl">

</body>
</html>