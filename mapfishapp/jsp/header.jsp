<%@ page pageEncoding="UTF-8"%>

<c:choose>
  <c:when test='<%= request.getParameter("noheader") == null %>'>
    <script type="text/javascript" src="/header/js/header.js"></script>
    <div id="go_head">
      <!-- see http://stackoverflow.com/questions/1037839/how-to-force-link-from-iframe-to-be-opened-in-the-parent-window -->
      <iframe src="/header/?lang=<%= lang %>&active=mapfishapp" style="width:100%;height:50px;border:none;overflow:hidden;" scrolling="no" frameborder="0" onload="_headerOnLoad(this)"></iframe>
      <p><b>customized mapfishapp datadir in effect</b></p>
    </div>
  </c:when>
</c:choose>

