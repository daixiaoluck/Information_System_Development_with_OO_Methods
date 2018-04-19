<#include "/included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
</head>
<body>

    <#include "/included_ftl/nav_content.ftl">

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
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual1" value="${InitialAnnual1}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual1" value="${AddAnnual1}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick1" value="${InitialSick1}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick1" value="${AddSick1}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid1" value="${InitialNopaid1}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers1" value="${InitialOthers1}">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Senior</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual2" value="${InitialAnnual2}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual2" value="${AddAnnual2}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick2" value="${InitialSick2}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick2" value="${AddSick2}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid2" value="${InitialNopaid2}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers2" value="${InitialOthers2}">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Manager</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnual3" value="${InitialAnnual3}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddAnnual3" value="${AddAnnual3}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSick3" value="${InitialSick3}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="AddSick3" value="${AddSick3}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaid3" value="${InitialNopaid3}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthers3" value="${InitialOthers3}">
            </div>

        </div>

        <div class="form-row mb-3">

            <div class="col col-form-label text-center">Maximum</div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialAnnualM" value="${InitialAnnualM}">
            </div>
            <div class="col">

            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialSickM" value="${InitialSickM}">
            </div>
            <div class="col">

            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialNopaidM" value="${InitialNopaidM}">
            </div>
            <div class="col">
                <input type="number" class="form-control w-50 mx-auto text-center" name="InitialOthersM" value="${InitialOthersM}">
            </div>

        </div>

        <div class="form-row">
            <div class="col d-flex justify-content-center">
                <button type="submit" class="btn btn-primary btn-lg">Confirm</button>
            </div>
        </div>

    </form>

    <#include "/included_ftl/notification_modal_content.ftl">

</body>
</html>