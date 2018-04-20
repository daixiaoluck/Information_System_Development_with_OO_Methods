<#assign request_url = {
    "login":"/personal_and_leave_information.ftl",
    "return_main":"/personal_and_leave_information.ftl"
}>
<#assign InitialAnnual1 = 0>
<#assign AddAnnual1 = 0>
<#assign InitialSick1 = 0>
<#assign AddSick1 = 0>
<#assign InitialNopaid1 = 0>
<#assign InitialOthers1 = 0>

<#assign InitialAnnual2 = 1>
<#assign AddAnnual2 = 1>
<#assign InitialSick2 = 1>
<#assign AddSick2 = 1>
<#assign InitialNopaid2 = 1>
<#assign InitialOthers2 = 1>

<#assign InitialAnnual3 = 2>
<#assign AddAnnual3 = 2>
<#assign InitialSick3 = 2>
<#assign AddSick3 = 2>
<#assign InitialNopaid3 = 2>
<#assign InitialOthers3 =2>

<#assign InitialAnnualM = 3>
<#assign InitialSickM = 3>
<#assign InitialNopaidM = 3>
<#assign InitialOthersM = 3>

<#assign Successornot = "N">
<#assign Message = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas quod sit sequi debitis, accusamus corporis, vero eligendi ducimus molestiae! Vel nam laborum, rem aperiam? Vitae labore provident reprehenderit tempora quod.">
<#assign Myinfo = [
    ["Annual","2018-3-27","Approval"],
    ["Annual","2018-3-28","Approval"],
    ["Annual","2018-3-27","Rejected"]
]>
<#assign Allemployee = [
    ["Test","A",2018,"HR","Y",1,2,3,4,5],
    ["Test2","A",2018,"Staff","Y",1,2,3,4,5],
    ["Test3","A",2018,"Staff","Y",1,2,3,4,5]
]>
<#assign Allrecords = [
    ["Test","Annual","2018-3-27",0.5,"Approval"],
    ["Test","Annual","2018-3-27",1,"Approval"],
    ["Test","Annual","2018-3-27",1.5,"Approval"]
]>
<#assign Partrecords = [
    ["Test3","Annual","2018-3-27",2,4]
]>
<#assign FulltimeOrot = "N">
<#assign Department = "A">
<#assign Employment_Date = 2018>
<#assign Role = "HR">
<#assign AnnualLeave = 10>
<#assign SickLeave = 5.5>
<#assign CompensationLeave = 2>
<#assign NopaidLeave = 0>
<#assign OthersLeave = 0>
<#assign MyUsername = "Baron">
<#assign MyPassword = "FengLe">

<#assign NotificationsList = [
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas quod sit sequi debitis, accusamus corporis, vero eligendi ducimus molestiae! Vel nam laborum, rem aperiam? Vitae labore provident reprehenderit tempora quod.",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas quod sit sequi debitis, accusamus corporis, vero eligendi ducimus molestiae! Vel nam laborum, rem aperiam? Vitae labore provident reprehenderit tempora quod.",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas quod sit sequi debitis, accusamus corporis, vero eligendi ducimus molestiae! Vel nam laborum, rem aperiam? Vitae labore provident reprehenderit tempora quod."
]>
<#assign NotificationsNum = 3>