<%@ page import="org.image.model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.image.DAO.DatabaseConnection" %>
<%@ page import="org.image.DAO.ImageUserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于</title>


    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/about.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>
            <div class="nav_z">
                <ul id="navul" class="cl">
                    <li id="start">
                        <a href="/" target="main">首页</a>
                    </li>
                    <li id="view">
                        <a href="mygallery.jsp">图库</a>
                    </li>
                    <li id="about">
                        <a href="/jsp/about.jsp">关于</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</head>
<body>
<span id="title">关于我们</span>
<p id="text_about">

    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于
    关于我们关于我们关于我们关于我们关于我<br/>
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关我<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    们关于我们关于我们关于我们<br/>关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我<br/>
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我<br/>
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们


    jQuery 选择器
    jQuery 元素选择器和属性选择器允许您通过标签名、属性名或内容对 HTML 元素进行选择。
    选择器允许您对 HTML 元素组或单个元素进行操作。
    在 HTML DOM 术语中：
    选择器允许您对 DOM 元素组或单个 DOM 节点进行操作。


    jQuery 元素选择器
    jQuery 使用 CSS 选择器来选取 HTML 元素。
    $("p") 选取  元素。
    $("p.intro") 选取所有 class="intro" 的 元素。
    $("p#demo") 选取所有 id="demo" 的  元素。


    jQuery 属性选择器
    jQuery 使用 XPath 表达式来选择带有给定属性的元素。
    $("[href]") 选取所有带有 href 属性的元素。
    $("[href='#']") 选取所有带有 href 值等于 "#" 的元素。
    $("[href!='#']") 选取所有带有 href 值不等于 "#" 的元素。
    $("[href$='.jpg']") 选取所有 href 值以 ".jpg" 结尾的元素。


    语法								描述
    $(this)					当前 HTML 元素
    $("p")						所有 元素
    $("p.intro")				所有 class="intro" 的 元素
    $(".intro")				所有 class="intro" 的元素
    $("#intro")				id="intro" 的元素
    $("ul li:first")			每个 的第一个 元素
    $("[href$='.jpg']")		所有带有以 ".jpg" 结尾的属性值的 href 属性
    $("div#intro .head")		id="intro" 的元素中的所有 class="head" 的元素


</p>

<%
    DatabaseConnection databaseConnection = new DatabaseConnection();
    ImageUserDaoImpl imageUserDao = new ImageUserDaoImpl();
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    User user = new User(email,name,password);
    imageUserDao.addImageUser(user);
%>

<%--<tr>
    <td><%=u.getEmail() %></td>
    <td><%=u.getName() %></td>
    <td><%=u.getPassword() %></td>
</tr>--%>
<%--<%
    }
%>--%>
</body>
</html>
