<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
   <@ pageEncoding:<%@ page pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort()
    + path + "/";
    %>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="rcss.css">
    <link rel="stylesheet" type="text/css" href="upload.css">
    <script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="upload.js"></script>
    <title>upload</title>
</head>
<body>
    <!--文件选择-->
    <div id="body">
        <div class="select">
            <h4 class="word">请选择一段文字</h4>
            <div class="up-in">
                <form method="get">
                    <label class="select1"><input name ="upload" type="radio" value = "" id="s1"> 文件上传</label>
                    <label class="select2"><input name ="input" type="radio" value = "" id="s2"> 文本输入</label>
                    <br/>
                </form>
            </div>
            <div class="upload">
                <form action="<%=basePath%>upload/file" enctype="multipart/form-data"method="post">
                    <input type="file" name="file" />
                <label><input name = "submit" type="submit" value="统计"></label>

                </form>
            </div>
            <div class="input">
                <form action="<%=basePath%>upload/string" method="POST">
                <textarea rows="4" cols="29" placeholder="请在此输入文本内容" name ="string"></textarea>
                <p class="button2" tabindex="0"><input type="submit">统计</p>
                <p class="button3" tabindex="0">清空内容</p>
                    </form>
            </div>
        </div>
        <!--统计结果-->
        <div class="result">
            <div class="result-num">
                  <p>各项统计内容的个数如下:</p>
                  <table border="2" cellspacing="0" cellpadding="0">
                    <tr>
                        <th>统计项</th>
                        <th>个数</th>
                    </tr>
                      <tr>
                          <td>英文字母</td>
                          <td>${res.get("englishCount")}</td>
                      </tr>
                      <tr>
                          <td>数字</td>
                          <td>${res.get("numberCount")}</td>
                      </tr>
                      <tr>
                          <td>中文汉字</td>
                          <td>${res.get("chineseCount")}</td>
                      </tr>、
                      <tr>
                          <td>中文标点符号</td>
                          <td>${res.get("symbolCount")}</td>
                      </tr>
                    </table>
            </div>
            <div class="result-max">
                <p>文字中出现频率最高的三个字是：</p>
                <table border="1" cellspacing="0" cellpadding="20">

                    <tr>
                        <th>文字</th>
                        <th>个数</th>
                    </tr>
                    <tr>
                        <td>${top.pollFirst()}</td>
                        <td>${chinese.get("first")}</td>
                    </tr>
                    <tr>
                        <td>${top.pollFirst()}</td>
                        <td>${chinese.get("second")}</td>
                    </tr>
                    <tr>
                        <td>${top.pollFirst()}</td>
                        <td>${chinese.get("third")}</td>
                    </tr>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>