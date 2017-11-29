<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-5
  Time: 下午9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--<<<<<<< HEAD:web/jsp/message.jsp--%>
    <%--<meta http-equiv="Content-Type" content="test/html; charset=UTF-8">--%>
    <%--<title>文件上传结果</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center>--%>
    <%--<h2>${message}</h2>--%>
<%--</center>--%>
<%--=======--%>

    <title>个人中心</title>
    <script type="text/javascript" src="../js/userInf.js"></script>
    <link href="../css/userInf.css" rel="stylesheet" type="text/css" />


</head>
<body>



<div class="main">
    <div class="test">
        <div class="areas a">
            <div> <img src="../images/head.png" alt="头像" width="80px" height="80px" onclick="editHead(this)"></div>
            <div class="leftdiv" id="tagbut">
                <button class="on" type="button">基本信息</button><br/>
                <button class="off" type="button">帐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户</button>
                <button class="off" type="button">设&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
            </div>
            </ul>
        </div>
        <div class="areas b">
            <div class="aa">
                <ul class="topul">
                    <li class="topli">
                    <a href="/" target="main">前台首页</a>
                </li>
                    <li class="topli">
                    <a href="/jsp/mygallery.jsp">我的图库</a>
                </li>
                    <li class="topli">
                    <a href="/jsp/about.jsp">注销帐号</a>
                </li>
                </ul>
            </div>
            <div id="tagdiv">
            <nav class="ab">
                <div id="infor" class="show">
                    <input class="alterbut" type="button" value="修改" onclick="changeinfo(this)"/><br/>
                    <table>
                        <tr>
                            <td class="textpad">姓名</td>
                            <td>张永富</td>
                        </tr>
                        <tr>
                            <td class="textpad">电子邮箱</td>
                            <td>634626064@qq.com</td>
                        </tr>
                        <tr>
                            <td class="textpad">出生时间</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="textpad">性别</td>
                            <td>保密</td>
                        </tr>
                        <tr>
                            <td class="textpad">签名</td>
                            <td>好好学习，天天向上。</td>
                        </tr>
                        <tr>
                            <td class="textpad">自我介绍</td>
                            <td>我四年级了。</td>
                        </tr>
                    </table>
                </div>
                <div id="alterinfor" class="hide">
                    <h3>基本信息</h3>
                    <table>
                        <tr>
                            <td class="textpad">姓名</td>
                            <td>
                                <input class="in" type="text" name="姓名" maxlength="20"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">电子邮箱</td>
                            <td>
                                <input class="in" type="email" name="email"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">出生时间</td>
                            <td>
                                <%--这里需要写一个js获取当前年份,输入时间要用js来判断--%>
                                <input class="intime" type="number" name="quantity" value="1970" oninput="limitYear(this)">
                                <input class="intime" type="number" name="quantity" value="1" oninput="limitMonth(this)">
                                <input class="intime" type="number" name="quantity" value="1" oninput="limitDay(this)">

                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">性别</td>
                            <td>
                                <input class="sex" type="radio" name="sex" value="male" />男
                                <input class="sex" type="radio" name="sex" value="female"/>女
                                <input class="sex" type="radio" name="sex" value="null" checked/>保密
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">签名</td>
                            <td>
                                <input class="in" type="text" name="签名" value="" maxlength="20" />
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">自我介绍</td>
                            <td>
                                <textarea class="intro" name="selfIntro"></textarea>
                            </td>
                        </tr>
                    </table>
                    <input type="button" value="返回" onclick="backinfor(this)" style="margin-right: 60px"/>
                    <input type="submit" value="提交" style="margin-top:25px"/>
                </div>

            </nav>
            <nav id="account" class="hide">
                <div class="alteraccount">
                    <div class="leftposi">
                        <p>修改密码</p><hr class="h"/>
                        <dl>
                            <dt>旧密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <dl>
                            <dt>新密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <dl>
                            <dt>确认新密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <p>
                            <input type="submit" value="提交">
                            <a href="/resetpas">忘记密码</a>
                        </p>
                    </div>
                    <div class="leftposi margintop">
                        <p class="warn">永久删除帐户</p><hr class="h"/>
                        <p>一旦你删除了此帐号就无法找回，请确认是否删除。</p><br/>
                        <input type="button" value="删除帐户"/>
                    </div>
                </div>
            </nav>
            <nav class="ab hide">假装有设置</nav>
        </div>
        </div>
    </div>

    <div id="headid" class="headarea">
        <p>修改图片</p>
        <img src="" alt="head" width="50px" height="50px">
        <dl>
            <dt>选择图片</dt>
            <dd><input type="text"></dd>
        </dl>
        <p>从相册选择</p>
        <input type="button" value="取消" onclick="cancalhead()"/>
    </div>
</div>

<%--隐藏背景--%>
<div id="hidebgid" class="hidebg"></div>

</body>
</html>