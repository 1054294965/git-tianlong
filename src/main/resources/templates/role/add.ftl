<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>role add</title>
    <#include "/common.ftl">
</head>


<body>



    <form id="form1" method="post" action="##">
        <label>level:</label><select id=""  name="" style="width:200px;">

                <#list levelList as level>
                <option value="${level.id}">${level.levelName}</option>
                </#list>
              
        </select><br>

        <label>姓名:</label><input name="name" /><br>

        <label>部门:</label><input name="department" /><br>
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