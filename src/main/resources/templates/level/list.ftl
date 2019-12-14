<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>level list</title>
    <#include "/common.ftl">
</head>
<body>

<table class="table table-bordered">
<thead>

<td>id</td>
<td>级别名称</td>
<td>级别排序</td>
<td><button class="btn btn-sm btn-primary">查看</button></td>
</thead>
<tbody>

<#list levelList as level>
    <tr>
        <td>${level.id}</td>
        <td>${level.levelName}</td>
        <td>${level.levelOrder}</td>
        <td><button class="btn btn-sm btn-primary">查看</button></td>
    </tr>
</#list>
</tbody>

</table>





<script>


</script>
</body>

</html>