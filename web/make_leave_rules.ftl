<#include "/included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
</head>
<body>

    <nav class="navbar navbar-expand-sm navbar-dark bg-primary justify-content-between mb-5">
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

    <div class="form-row mb-3">

        <div class="col text-center">The Level of Staff</div>
        <div class="col text-center">Initial Annual</div>
        <div class="col text-center">Added Annual Annually</div>
        <div class="col text-center">Initial Sick</div>
        <div class="col text-center">Added Sick Annually</div>
        <div class="col text-center">No Paid</div>
        <div class="col text-center">Other</div>

    </div>

    <form method="post">

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Junior</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual1">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual1">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick1">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick1">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid1">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers1">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Senior</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual2" value="${test.key}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual2">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick2">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick2">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid2">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers2">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Manager</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual3">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual3">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick3">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick3">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid3">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers3">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Maximum</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnualM">
            </div>
            <div class="col">

            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSickM">
            </div>
            <div class="col">

            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaidM">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthersM">
            </div>

        </div>

        <div class="form-row">
            <div class="col d-flex justify-content-center">
                <button type="submit" class="btn btn-primary btn-lg">Confirm</button>
            </div>
        </div>

    </form>

</body>
</html>