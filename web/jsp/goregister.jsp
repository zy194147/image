<%@ page import="org.image.DAO.DatabaseConnection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="../css/loginandregister.css" rel="stylesheet" type="text/css" />
    <%--<link href="../css/style.css" rel="stylesheet" type="test/css" />--%>
    <link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <div class="logo_area">
                <a class="logo_l" href="/" title="返回首页">
                    <img class="logo_img" src="../images/logo/logo-64.png">

                </a>
            </div>
            <form class="searchBar" action="SearchImgPage" method="get">
                <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
                       onfocus="this.style.backgroundColor='gainsboro'"
                       onblur="this.style.backgroundColor='beige'">
                <input class="goSearch" type="submit" value="搜索">
            </form>


            <nav class="top_menu">
                <ul class="primary_menu">
                    <li class="menu_item"><a href="/">首页</a></li>
                    <li class="menu_item"><a>图库</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>
                            <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>
                            <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">创建图库</a></li>
                        </ul>
                    </li>
                    <li class="menu_item"><a>关于</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">网站</a></li>
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">团队</a></li>
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">反馈</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</head>
<body>

<%--
以下共8个方法，两两为一组，四组均为重复性代码，未来将改进，现在先实现。
--%>
<script type="text/javascript">

    function trim(str){ //删除左右两端的空格
        return str.replace(/(^\s*)|(\s*$)/g, "");
    }

    function name_blur() {
        var name = trim(document.getElementById('name').value);
        var error_text_span = document.getElementById("show_name_error_text");
//        字母、数字、下划线组成，字母开头，2-16位。
        if(!/^[a-zA-z]\w{1,15}$/.test(name)){
//            如果输入不正确
            error_text_span.style.display='inline';
            document.getElementById('name').style.borderColor='red';
            return false;
        }else return true;
    }
    function name_focus() {
        var error_text_span = document.getElementById("show_name_error_text");
        document.getElementById('name').style.borderColor='skyblue';
        error_text_span.style.display='none';
    }
    function passwd_blur() {
        var password = document.getElementById('password').value;
        var retype_password = document.getElementById('retype_password').value;
        var error_retype_pw_text_span = document.getElementById("show_retype_passwd_error_text");
        if(retype_password == null || retype_password == ""){
            var error_text_span = document.getElementById("show_passwd_error_text");
            //        字母或数字或下划线，4-16位。
            if(!/[a-zA-Z0-9_]{4,15}/.test(password)){
//            如果输入不正确
                document.getElementById('password').style.borderColor='red';
                error_text_span.style.display='inline';
                return false;
            }else return true;
        } else {
            if(retype_password == password){
                error_retype_pw_text_span.style.display='none';
                return true;
            }else {
//                document.getElementById('retype_password').style.borderColor='red';
                document.getElementById('password').style.borderColor='red';
                error_retype_pw_text_span.style.display='inline';
                return false;
            }
        }
    }
    function passwd_focus() {
        var error_text_span = document.getElementById("show_passwd_error_text");
        var error_retype_pw_text_span = document.getElementById("show_retype_passwd_error_text");
        document.getElementById('password').style.borderColor='skyblue';
        error_text_span.style.display='none';
        error_retype_pw_text_span.style.display='none';
    }
    function retype_passwd_blur() {
        var retype_passwd = document.getElementById('retype_password').value;
        var password = document.getElementById('password').value;
        var error_text_span = document.getElementById("show_retype_passwd_error_text");
        if(password == retype_passwd){
            //            如果输入正确
            return true;
        }else {
            document.getElementById('retype_password').style.borderColor='red';
            document.getElementById('password').style.borderColor='red';
            error_text_span.style.display='inline';
            return false;
        }
    }
    function retype_passwd_focus() {
        var error_text_span = document.getElementById("show_retype_passwd_error_text");
        document.getElementById('password').style.borderColor='skyblue';
        document.getElementById('retype_password').style.borderColor='skyblue';

        error_text_span.style.display='none';
    }
    function tel_focus() {
        var error_text_span = document.getElementById("show_tel_error_text");
        document.getElementById('tel').style.borderColor='skyblue';

        error_text_span.style.display='none';
    }
    function tel_blur() {
        var tel = document.getElementById('tel').value;
        var error_text_span = document.getElementById("show_tel_error_text");
        if(!/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(tel)){
//            如果输入不正确
            document.getElementById('tel').style.borderColor='red';
            error_text_span.style.display='inline';
            return false;
        }else return true;
    }
    function checkAllMassage() {
        if(name_blur() && passwd_blur() && retype_passwd_blur() && tel_blur())
            return true;
        else return false;
    }
</script>

<div class="goregister" onsubmit="return checkAllMassage()">
    <form id="registerform" action="/register" method="post">
        <h3>注册</h3>

        <%--姓名：--%>
        <input type="text" id="name" name="name" placeholder="输入用户名(必填)"
        <%--onblur="checkBlur(this.value);" onfocus="checkFocus();"--%>
               onfocus="name_focus();" onblur="name_blur();">
        <span id="show_name_error_text" style="color:red;display: none;font-size: 13px;">
            用户名输入不正确或长度不对,不能有空格
        </span>
        <br/>
        <%--<span id="checkText"></span><br/>--%>
        <%--密码：--%>
        <input type="password" id="password" name="password" placeholder="输入密码(必填)"
               onfocus="passwd_focus();" onblur="passwd_blur();">
        <span id="show_passwd_error_text" style="color:red;display: none;font-size: 13px;">
            密码输入不正确,输入字母或数字，4-16位
        </span>
        <br/>
        <input type="password" id="retype_password" name="password" placeholder="再次输入密码(必填)"
               onfocus="retype_passwd_focus();" onblur="retype_passwd_blur();">
        <span id="show_retype_passwd_error_text" style="color:red;display: none;font-size: 13px;">
            密码输入不一致
        </span>
        <br/>
        <%--电话：--%>
        <input type="tel" id="tel" name="tel" placeholder="电话号码"
               onfocus="tel_focus();" onblur="tel_blur();">
        <span id="show_tel_error_text" style="color:red;display: none;font-size: 13px;">
            电话号码输入不正确
        </span>
        <br/>
        <input type="text" id="varify_code" name="varifycode" placeholder="输入验证码" style="width:120px;">
        <button style="cursor:pointer; position: relative;float: left;top:12px;width:120px;height: 40px;border:none;background-color: mediumslateblue;margin-right: 10px;">点击发送验证码</button>
        <input id="register" type="submit" value="注册"/><br/>
        <span id="cannotlogin"><a href="help.jsp">无法注册？</a> </span>
    </form>
</div>


</body>
</html>
