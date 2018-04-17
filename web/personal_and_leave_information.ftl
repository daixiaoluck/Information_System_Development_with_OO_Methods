<#include "/included_ftl/mock_data.ftl">
<!doctype html>
<html>
<head>
    <#include "/included_ftl/head_content.ftl">
    <link rel="stylesheet" href="/css/personal_and_leave_information.css">
</head>
<body>

    <nav class="navbar navbar-expand-sm navbar-dark bg-primary justify-content-between">
        <span class="navbar-brand">Doraemon Co. Ltd.</span>
        <ul class="navbar-nav">
            <li class="nav-item">
                <div class="nav-link text-white">${MyUsername}</div>
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

    <h1>My Part</h1>
    <h3>My Personal Information</h3>
    <form method="post" action="/adfs">
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
                        <input class="form-check-input" type="radio" id="FulltimeYes" <#if FulltimeOrot == 'Y'>checked</#if> name="FulltimeOrot">
                        <label for="FulltimeYes" class="form-check-label">Yes</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="FulltimeNo" <#if FulltimeOrot == 'N'>checked</#if> name="FulltimeOrot">
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

    <h3>Staff Part</h3>
    <table class="table">
        <thead>
            <th></th>
            <th>Type</th>
            <th>Date</th>
            <th>Result</th>
        </thead>
        <tbody>
            <#list mock_list as item>
                <tr>
                    <td>Record</td>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                </tr>
            </#list>
        </tbody>
    </table>

    <div class="modal fade" id="notification_modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Notifications</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <ul class="modal-body list-unstyled">
                    <li>Tai So Yu apply for an annual leave.</li>
                    <li>Tai So Yu apply for a compensation leave.</li>
                </ul>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="leave_modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Type: Annual</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="modal-body" id="LeaveForm" method="post">
                    <input type="hidden" name="Applytype">
                    <div class="form-group row">
                        <label for="Date" class="col-2 col-form-label">Date:</label>
                        <div class="col-10">
                            <input type="text" class="form-control custom-date" id="Date" onclick="WdatePicker()" readonly name="Applydate">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Duration" class="col-2 col-form-label">Duration:</label name="Applyduration">
                        <div class="col-10">
                            <input type="number" class="form-control" id="Duration">
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

    <script src="/js/My97DatePicker/WdatePicker.js"></script>
    <script src="/js/personal_and_leave_information.js"></script>

</body>
</html>