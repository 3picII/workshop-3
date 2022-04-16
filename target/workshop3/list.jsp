<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
</div>
<div>
    <div>
        <h4>Lista użytkowników</h4>
    </div>
    <table class="table">
        <tr>
            <th>Id</th>
            <th>Nazwa użytkownika</th>
            <th>Email</th>
            <th>Akcje</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.userName}</td>
                <td>${user.email}</td>
                <td>
                    <a href='<c:url value="/edit?id=${user.id}"/>'>Edytuj</a>
                    <a href='<c:url value="/delete?id=${user.id}"/>'>Usuń</a>
                    <a href='<c:url value="/show?id=${user.id}"/>'>Pokaż</a>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>

<%@ include file="/footer.jsp" %>