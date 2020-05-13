<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:loginLayout pageName="login">
    <h2>Login</h2>
    <div class="container">
        <form action = 'login' method ="POST">

            <div class = "row">
                <div class="form-group col-md-4 offset-md-4">
                    <label>username</label>
                    <input path= "username" name="username" class="form-control" placeholder="username" type="text">
                </div><!-- form-group// -->
            </div>

            <div class = "row">
                <div class="form-group  col-md-4 offset-md-4">
                    <label>password</label>
                    <input path = "password" name="password" class="form-control" placeholder="password" type="password">
                </div> <!-- form-group// -->
            </div>

            <div class = "row">
                <div class="form-group   col-md-2 offset-md-5">
                    <button type="submit" class="btn btn-primary"> Login </button>
                </div> <!-- form-group// -->
            </div>
        </form>
    </div>
</petclinic:loginLayout>

