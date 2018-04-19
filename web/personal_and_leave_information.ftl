<#include "./included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "./included_ftl/head_content.ftl">
    <link rel="stylesheet" href="/css/personal_and_leave_information.css">
</head>
<body>

    <#include "/included_ftl/nav_content.ftl">

    <h1>My Part</h1>
    <h3>My Personal Information</h3>
    <form method="post" action="/test/biu2">
        <fieldset disabled>
            <div class="form-row">
                <div class="form-group col-3">
                    <label for="Department">Department:</label>
                    <input type="text" id="Department" class="form-control" name="Department" value="${Department}">
                </div>
                <div class="form-group col-3">
                    <label for="EmploymentYear">Employment Year:</label>
                    <input type="number" id="EmploymentYear" class="form-control" name="Employment_Date" value="${Employment_Date?c}">
                </div>
                <div class="form-group col-3">
                    <label for="Position">Position:</label>
                    <select id="Position" class="custom-select" name="Role">
                        <option value="Staff" <#if Role == "Staff">selected</#if>>staff</option>
                        <option value="HR" <#if Role == "HR">selected</#if>>human resources</option>
                        <option value="Manager" <#if Role == "Manager">selected</#if>>manager</option>
                    </select>
                </div>
                <div class="form-group col-3">
                    <label class="d-block">Fulltime:</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="FulltimeYes" value="Y" <#if FulltimeOrot == 'Y'>checked</#if> name="FulltimeOrot">
                        <label for="FulltimeYes" class="form-check-label">Yes</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="FulltimeNo" value="N" <#if FulltimeOrot == 'N'>checked</#if> name="FulltimeOrot">
                        <label for="FulltimeNo" class="form-check-label">No</label>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="form-group">
            <input type="hidden" name="MyUsername" value="${MyUsername}">
            <label class="d-block">Operation:</label>
            <button type="button" class="btn btn-light j-unlock">unlock</button>
            <button type="submit" class="btn btn-dark j-modify">modify</button>
        </div>
    </form>

    <h3>My Leave Balance</h3>
    <table class="table">
        <thead>
            <th></th>
            <th>Annual</th>
            <th>Sick</th>
            <th>Compensation</th>
            <th>No Paid</th>
            <th>Other</th>
        </thead>
        <tbody>
            <tr>
                <th>Balance</th>
                <td>${AnnualLeave}</td>
                <td>${SickLeave}</td>
                <td>${CompensationLeave}</td>
                <td>${NopaidLeave}</td>
                <td>${OthersLeave}</td>
            </tr>
            <tr>
                <th>Button</th>
                <td>
                    <button<#if AnnualLeave == 0> disabled</#if> type="button" class="btn btn-primary" data-Applytype="Annual" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
                <td>
                    <button<#if SickLeave == 0> disabled</#if> type="button" class="btn btn-primary" data-Applytype="Sick" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
                <td>
                    <button<#if CompensationLeave == 0> disabled</#if> type="button" class="btn btn-primary" data-Applytype="Compensation" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
                <td>
                    <button<#if NopaidLeave == 0> disabled</#if> type="button" class="btn btn-primary" data-Applytype="Nopaid" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
                <td>
                    <button<#if OthersLeave == 0> disabled</#if> type="button" class="btn btn-primary" data-Applytype="Others" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
            </tr>
        </tbody>
    </table>

    <h3>My Leave Records</h3>
    <table class="table">
        <thead>
            <th></th>
            <th>Type</th>
            <th>Date</th>
            <th>Result</th>
        </thead>
        <tbody>
            <#list Myinfo as item>
                <tr>
                    <td>Record</td>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                </tr>
            </#list>
        </tbody>
    </table>

    <#if Role != "Staff">

    <h1>Staff Part</h1>
    <h3>Staff Information</h3>
    <table class="table">
        <thead>
            <th>Username</th>
            <th>Department</th>
            <th>Employment Year</th>
            <th>Position</th>
            <th>Fulltime</th>
            <th>Annual</th>
            <th>Sick</th>
            <th>Compensation</th>
            <th>No Paid</th>
            <th>Other</th>
        </thead>
        <tbody>
            <#list Allemployee as item>
                <tr>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                    <td>${item[3]}</td>
                    <td>${item[4]}</td>
                    <td>${item[5]}</td>
                    <td>${item[6]}</td>
                    <td>
                        <#if Role == "HR">
                            <form method="post">
                                <input type="hidden" name="Username" value="${item[0]}">
                                <input type="number" step="0.5" class="form-control d-inline-block w-25" name="Compensation" value="${item[7]}">
                                <button type="submit" class="btn btn-primary">Confrim</button>
                            </form>
                        <#else>
                            ${item[7]}
                        </#if>
                    </td>
                    <td>${item[8]}</td>
                    <td>${item[9]}</td>
                </tr>
            </#list>
        </tbody>
    </table>
    <h3>Staff Records</h3>
    <table class="table">
        <thead>
            <th>Username</th>
            <th>Type</th>
            <th>Date</th>
            <th>Duration</th>
            <th>Result</th>
        </thead>
        <tbody>
            <#list Allrecords as item>
                <tr>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                    <td>${item[3]}</td>
                    <td>${item[4]}</td>
                </tr>
            </#list>
        </tbody>
    </table>

    <#if Role == "Manager">
    <h3>Applications</h3>
    <table class="table">
        <thead>
            <th>Username</th>
            <th>Type</th>
            <th>Date</th>
            <th>Duration</th>
            <th>Decision</th>
        </thead>
        <tbody>
            <#list Partrecords as item>
                <tr>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                    <td>${item[3]}</td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="RecordNo" value="${item[4]}">
                            <input type="hidden" name="Username" value="${MyUsername}">
                            <button type="submit" name="ApplyResult" value="Approval" class="btn btn-success">Approval</button>
                            <button type="submit" name="ApplyResult" value="Reject" class="btn btn-danger">Reject</button>
                        </form>
                    </td>
                </tr>
            </#list>
        </tbody>
    </table>
    </#if>

    </#if>

    <div class="modal fade" id="leave_modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Type: <span id="leave_type_span"></span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="modal-body" id="LeaveForm" method="post" action="/test/biu4">
                    <input type="hidden" name="Applytype" id="apply_type_hidden">
                    <input type="hidden" name="MyUsername" value="${MyUsername}">
                    <div class="form-group row">
                        <label for="Date" class="col-2 col-form-label">Date:</label>
                        <div class="col-10">
                            <input type="text" class="form-control custom-date" id="Date" onclick="WdatePicker()" readonly name="Applydate">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Duration" class="col-2 col-form-label">Duration:</label name="Applyduration">
                        <div class="col-10">
                            <input type="number" step="0.5" class="form-control" id="Duration" name="Applyduration">
                        </div>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" form="LeaveForm">Confirm</button>
                </div>
            </div>
        </div>
    </div>

    <#include "/included_ftl/notification_modal_content.ftl">

    <script src="/js/My97DatePicker/WdatePicker.js"></script>
    <script src="/js/personal_and_leave_information.js"></script>

</body>
</html>