<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
</div>
    <div>
        <h2 style="color:#4e73df">Dodaj użytkownika</h2>
    </div>
    <div>
        <form method="post" class="form-text">
            <label for="userName">Nazwa </label><br>
            <input type="text" id="userName" name="userName" placeholder="Nazwa użytkownika"><br>
            <label for="userEmail">Email </label><br>
            <input type="email" id="userEmail" name="userEmail" placeholder="Email użytkownika"><br>
            <label for="userPassword">Hasło </label><br>
            <input type="password" id="userPassword" name="userPassword" placeholder="Hasło użytkownika"><br><br>
            <input type="submit" value="Zapisz">
        </form>

    </div>

<%@ include file="/footer.jsp" %>



