<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.UploadImageDaoImpl" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>


</head>
<body>


<div id="top_bg">


    <a class="logo_l" href="/" title="返回首页"></a>
    <div class="nav_z">
        <ul id="navul" class="cl">
            <li id="start">
                <a href="/" target="main" title="首页">首页</a>
            </li>
            <li id="view">
                <a href="/jsp/mygallery.jsp" title="我的图库">图库</a>
            </li>
            <li id="about">
                <a href="/jsp/about.jsp" title="关于我们">关于</a>
            </li>
        </ul>



        <%
            HttpSession httpSession = request.getSession();
            User user = (User)httpSession.getAttribute("userName");
            if(user != null){       //为了测试，先将此行注释
        %>

        <%--遍历用户个人的图库--%>
        <p id="wel_show">
            亲爱的
            <a href="/jsp/userpage.jsp">
                <%
                    out.print(user.getName());
//                    out.print(request.getServletContext().getRealPath("/"));
                %>
            </a>
            ,欢迎你。
        </p>
    </div>
</div>



<div class="funclist">
    <ul>
        <li id="upload">
            <a href="/jsp/uploadImages.jsp" title="上传图片">上传图片</a>
        </li>
        <li id="sort">
            <a href="/jsp/sortImages.jsp" title="排序图片">排序图片</a>
        </li>
        <li id="share">
            <a href="/jsp/shareImages.jsp" title="分享图片">分享图片</a>
        </li>
        <li id="upload1">
            <a href="/jsp/mygallery.jsp" title="管理图片">管理图片</a>
        </li>
        <li id="sort1">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>
        <li id="share1">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>
        <li id="upload2">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>

        </li>
    </ul>
</div>



<div class="mygallerylist">
<%
    UploadImageDaoImpl uploadImage = new UploadImageDaoImpl();
    List<String> paths = uploadImage.getImageFilePath(user.getName());

    for(String path:paths) {
        String[] strings = path.split("/");
        String p = strings[strings.length - 1];
        request.setAttribute("ph", p);

%>
    <div class="img">
        <a target="_blank" href="#">
            <img id="allImages" src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">
            我的图图
        </div>
    </div>

<%
        request.removeAttribute("ph");
    }
%>

</div>


<%--

<div class="mygallerylist">
    <div class="img">
        <a target="_blank" href="#">
            <img src="" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片1</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="http://localhost:8080/i/img/6.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片2</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="http://localhost:8080/" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片3</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/3.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片4</div>
    </div>

    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/4.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片5</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/5.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片6</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/6.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片7</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/7.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片8</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/8.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片9</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/9.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片10</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/10.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片11</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/11.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片12</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/12.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片13</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/13.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片14</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/14.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片15</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/15.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片16</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/16.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片17</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/17.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片18</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../i/background2.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片18</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/0.jpg"alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片18</div>
    </div>
</div>



--%>





        <%
    }
    else{
        %>
<p id="calltologin">
    你好像还没有登录哦
    <a href="/jsp/login.jsp">返回登录</a>
</p>
<%
    }
%>

</body>
</html>