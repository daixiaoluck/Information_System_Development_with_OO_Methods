<#if !data_from_database??>
    <#include "/mock_data/mock_freemarker_data.ftl">
<#else>
    <#include "/mock_data/real_freemarker_data.ftl">
</#if>