<%--
  Created by IntelliJ IDEA.
  User: jk
  Date: 2016/12/24
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>文件上传页面1</h1>
<div>
  <h3>请选择一段文字</h3>
</div>
<div class="upload">
  <form action="upload/file" enctype="multipart/form-data"method="post">
    <input type="file" name="file"/><br/>
    <input type="submit" value="upload">
  </form>
</div>
<div>
  <form action="upload/string" method="POST">
  <input type = "text" name="string"/><p>统计</p><p>清空内容</p>
    <input type="submit" value="submit">
  </form>
</div>
<div>
  各项统计结果如下
  <table border="1" cellspacing="0" cellpadding="10">
    <tr>
      <th>统计项</th>
      <th>个数</th>
    </tr>

    <tr>
      <td>英文字母</td>
      <td>${res.get("A")}</td>
    </tr>
    <tr>
      <td>数字</td>
      <td>${res.get("B")}</td>
    </tr>
    <tr>
      <td>中文汉字</td>
      <td>${res.get("C")}</td>
    </tr>、
    <tr>
      <td>中文标点符号</td>
      <td>${res.get("D")}</td>
    </tr>
  </table>
</div>

</body>
</html>
