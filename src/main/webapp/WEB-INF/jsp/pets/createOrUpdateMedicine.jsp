<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<petclinic:layout pageName="owners">
    <jsp:body>
        <h2><c:if test="${medicine['new']}">New </c:if>Medicine</h2>

        <span id="pet"><strong>Pet</strong></span>
        <table class="table table-striped" aria-describedby="pet">
            <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Birth Date</th>
                <th scope="col">Type</th>
                <th scope="col">Owner</th>
            </tr>
            </thead>
            <tr>
                <td><c:out value="${medicine.pet.name}"/></td>
                <td><petclinic:localDate date="${medicine.pet.birthDate}" pattern="yyyy/MM/dd"/></td>
                <td><c:out value="${medicine.pet.type.name}"/></td>
                <td><c:out value="${medicine.pet.owner.firstName} ${visit.pet.owner.lastName}"/></td>
            </tr>
        </table>

        <form:form modelAttribute="medicine" class="form-horizontal">
            <div class="form-group has-feedback">
                <petclinic:inputField label="Name" name="name"/>
                <petclinic:inputField label="Dose" name="dose"/>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="hidden" name="petId" value="${medicine.pet.id}"/>
                    <button class="btn btn-default" type="submit">Add Medicine</button>
                </div>
            </div>
        </form:form>

        <br/>
        <strong id="previousMedicine">Previous Medicine</strong>
        <table class="table table-striped" aria-describedby="previousMedicine">
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Dose</th>
            </tr>
            <c:forEach var="medicine" items="${medicine.pet.med}">
                <c:if test="${!medicine['new']}">
                    <tr>
                        <td><c:out value="${medicine.name}" /></td>
                        <td><c:out value="${medicine.dose}"/></td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </jsp:body>

</petclinic:layout>
