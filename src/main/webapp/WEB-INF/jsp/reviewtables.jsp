<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<%@ page pageEncoding="UTF-8" %>
<title>Review List</title>
</head>
<body>
    <h2>All Reviews</h2>
    <table border="1">
        <tr>
            <th>Image</th>
            <th>Title</th>
        </tr>
        <c:forEach var="review" items="${reviews}">
            <tr>
                <td>
                    <td>
                    <c:choose>
                        <c:when test="${not empty review.anh}">
                            <img src="${pageContext.request.contextPath}/images/${review.anh}" alt="${review.anh}" width="100">
                        </c:when>
                        <c:otherwise>
                            <span>No Image</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/view/${review.id}">${review.tieude}</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
