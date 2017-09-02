<%@ page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SkySchedule</title>
    <link rel="stylesheet" href="/css/main.css"/>
    <script language="javascript" src="/js/jquery-1.7.2.min.js"></script>
</head>

<body>
<div class="div">Welcome to SkySchedule</div>
<div id="dl"></div>
</body>

</html>

<script language="javascript">
    function check()
    {
        $('#dl').html('');
        $.ajax({
            type: "GET",
            url:"/client",
            dataType: "html",
            async: true,
            error: function(data, error) {},
            success: function(data, textStatus) {
                $('#dl').html(data);
            }
        });
    }

    check();
    //ѭ��ִ�У�ÿ��15����ִ��һ��check
    window.setInterval(check, 15000);
</script>