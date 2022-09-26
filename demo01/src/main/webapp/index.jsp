<%@ page import="com.example.demo01.KhachHang" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<KhachHang> khList = new ArrayList<>();
    khList.add(new KhachHang(1,"DAO DUY TUNG","17-THAI BINH","img/tung.png"));
    khList.add(new KhachHang(2,"TA HONG PHU","29-HA NOI","img/phu.png"));
    khList.add(new KhachHang(3,"TRAN TIEN DAT","16-HAI PHONG","img/dat.png"));
    khList.add(new KhachHang(4,"TRAN VAN BA","88-VINH PHUC","img/ba.png"));

    pageContext.setAttribute("listKh",khList);
%>

<table border="1" style="width: 100%">

    <tr>
        <th>STT</th>
        <th>NAME</th>
        <th>ADDRESS</th>
        <th>IMG</th>
    </tr>
    <c:forEach var="kh" items="#{listKh}">
        <tr>
            <td><c:out value="${kh.id}"></c:out></td>
            <td><c:out value="${kh.name}"></c:out></td>

            <td>
                <c:set var="vi_tri" value="${kh.address}"></c:set>
                <c:out value="${vi_tri}"></c:out>
            </td>

            <td align="center">
                <img width="200" height="200" src="${kh.anh}">
            </td>
        </tr>

    </c:forEach>

</table>


</body>
</html>