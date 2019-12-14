<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>role list</title>
    <#include "/common.ftl">
</head>
<body>
<button class="btn btn-primary" onclick="edit()">添加</button>
<table class="table table-bordered">
    <thead>

    <td>id</td>
    <td>姓名</td>
    <td>所属组</td>
    <td>操作</td>
    </thead>
    <tbody>
    <#list roleList as role>
        <tr>
            <td>${role.id}</td>
            <td>${role.name}</td>
            <td>${role.department}</td>
            <td><button class="btn btn-sm btn-primary" onclick="view(${role.id})">查看</button>
                <button class="btn btn-sm btn-primary" onclick="del(${role.id})">删除</button>
            </td>

        </tr>
    </#list>
    </tbody>

</table>



<script>

    function view(id){
        console.log(id)
        location.href="${path}/role/edit?id="+id;
    }
    function del(id){

        $.ajax({
            url:'${path}/role/del',
            data:{id:id},                 //将表单数据序列化，格式为name=value
            type:'POST',
            success:function(data){

                if(data=="success"){
                    alert("删除成功")
                    location.href="${path}/role/list";
                }

            },
            error:function(){

                console.log("提交ajax函数异常");
            }

        });

    }
    function edit(){

        location.href="${path}/role/edit";
    }

</script>
</body>

</html>