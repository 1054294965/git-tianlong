<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>role edit</title>
    <#include "/common.ftl">
</head>
<body>

    <form id="form1" action="">
<#--        <label>level:</label><select  name="level.id" style="width:200px;">-->

<#--                <#list levelList as level>-->
<#--                    <option value="${level.id}"  <#if role??><#if level.id== role.level.id>selected</#if></#if>>${level.levelName}</option>-->
<#--                </#list>-->
<#--             -->
<#--        </select><br>-->

        <select  name="level.id" style="width:200px;">
            <option value="13" selected>一流</option>
        </select>
        <label>姓名</label>:</label><input name="name" value="<#if role??>${role.name}</#if>"/><br>

        <label>部门:</label><input name="department" value="<#if role??>${role.department}</#if>"/><br>
        <input type="submit" value="保存" class="btn btn-primary"/>
    </form>

</body>

<script>
    $(function(){
        $('#form1').submit(function() {
            $.ajax({
                url:'${path}/role/update',
                data:$('#form1').serialize(),                 //将表单数据序列化，格式为name=value
                type:'POST',
                success:function(data){

                    if(data=="success"){
                        alert("保存成功")
                        location.href="${path}/role/list";
                    }

                },
                error:function(){

                    console.log("提交ajax函数异常");
                }

            });
            return false; // 取消form默认的action事件

        })

    })

</script>
</html>