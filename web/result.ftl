<#if !data_from_database??>
    <#include "/mock_data/mock_freemarker_data.ftl">
</#if>
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
</head>
<body>

    <nav class="navbar navbar-expand-sm navbar-dark bg-primary justify-content-between result">
        <span class="navbar-brand">Doraemon Co. Ltd.</span>
        <ul class="navbar-nav">
            <li class="nav-item">
                <div class="nav-link text-white">Baron</div>
            </li>
            <li class="nav-item">
                <div class="nav-link text-white" data-toggle="modal" data-target="#notification_modal">
                    <span>notifications</span>
                    <span class="badge badge-light position-relative">2</span>
                </div>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link text-white">sign out</a>
            </li>
        </ul>
    </nav>

    <div class="w-50 mx-auto container">
        <div class="row">
            <img class="col-2" src="/image/success.svg">
            <div class="col-10 align-self-center">
                <span class="h3">Your application has been submitted.Please wait for manager's decision.</span>
            </div>
        </div>
    </div>

</body>
</html>