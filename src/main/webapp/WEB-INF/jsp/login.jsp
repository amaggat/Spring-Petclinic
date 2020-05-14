<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:loginLayout pageName="login">
    <h2 class="text-center">Login</h2>
    <div class="container">
        <form action = 'login' method ="POST">

            <div class = "row">
                <div class="form-group col-md-4 offset-md-4" style="margin:0 33.3%" style="margin-top: 10px">
                    <label>Account</label>
                    <input style="border-radius: 4px" path= "username" name="username" class="form-control" placeholder="username" type="text">
                </div><!-- form-group// -->
            </div>

            <div class = "row">
                <div class="form-group  col-md-4 offset-md-4" style="margin:0 33.3%" style="margin-top: 10px">
                    <label>Password</label>
                    <input style="border-radius: 4px" path = "password" name="password" class="form-control" placeholder="password" type="password">
                </div> <!-- form-group// -->
            </div>

            <div class = "row">
                <div class="form-group  text-center" style="margin-top: 10px">
                    <button type="submit" class="btn btn-success" style="border-radius: 4px" > Login </button>
                </div> <!-- form-group// -->
            </div>
        </form>
    </div>
</petclinic:loginLayout>

