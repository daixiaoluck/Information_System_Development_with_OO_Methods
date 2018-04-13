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

    <h1>My Part</h1>
    <h3>My Personal Information</h3>
    <form>
        <fieldset disabled>
            <div class="form-row">
                <div class="form-group col-3">
                    <label for="Department">Department:</label>
                    <input type="text" id="Department" class="form-control">
                </div>
                <div class="form-group col-3">
                    <label for="EmploymentYear">Employment Year:</label>
                    <input type="number" id="EmploymentYear" class="form-control">
                </div>
                <div class="form-group col-3">
                    <label for="Position">Position:</label>
                    <select id="Position" class="custom-select">
                        <option>staff</option>
                        <option>human resources</option>
                        <option>manager</option>
                    </select>
                </div>
                <div class="form-group col-3">
                    <label class="d-block">Fulltime:</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="FulltimeYes">
                        <label for="FulltimeYes" class="form-check-label">Yes</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="FulltimeNo">
                        <label for="FulltimeNo" class="form-check-label">No</label>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="form-group">
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
                <td>10</td>
                <td>10</td>
                <td>5</td>
                <td>5</td>
                <td>0</td>
            </tr>
            <tr>
                <th>Button</th>
                <td>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#leave_modal">Apply</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary">Apply</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary">Apply</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary">Apply</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary" disabled>Apply</button>
                </td>
            </tr>
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
                    <div class="form-group row">
                        <label for="Date" class="col-2 col-form-label">Date:</label>
                        <div class="col-10">
                            <input type="text" class="form-control custom-date" id="Date" onclick="WdatePicker()" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Duration" class="col-2 col-form-label">Duration:</label>
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