<#include "/included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
    <link rel="stylesheet" href="/css/login.css">
</head>
<body class="d-flex h-100 justify-content-center align-items-center">
    <form action="${request_url["login"]}" method="post" class="container-fluid w-50">
        <div class="row justify-content-center no-gutters">
            <div class="col-4">
                <img src="/image/Doraemon.png" width="100%">
            </div>
        </div>
        <div class="row">
            <h2 class="text-center w-100">Doraemon Staff Leave System</h2>
        </div>
        <div class="form-group row justify-content-center no-gutters">
            <label for="Username" class="col-2 col-form-label">Username:</label>
            <div class="col-4">
                <input type="text" class="form-control" id="Username" name="Username">
            </div>
        </div>
        <div class="form-group row justify-content-center no-gutters">
            <label for="Password" class="col-2 col-form-label">Password:</label>
            <div class="col-4">
                <input type="password" class="form-control" id="Password" name="Password">
            </div>
        </div>
        <div class="row justify-content-center no-gutters">
            <p class="lead text-danger col-4 offset-2">
                <#if errorMsg??>${errorMsg}</#if>
            </p>
        </div>
        <div class="row justify-content-center no-gutters">
            <div class="col-4 offset-2">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</body>
</html>