<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="owners">

    <h2 id="ownerInformation">Owner Information</h2>

    <table class="table table-striped" aria-describedby="ownerInformation">
        <tr>
            <th id="name">Name</th>
            <td headers="name"><strong><c:out value=" ${owner.lastName}"/></strong></td>
        </tr>
        <tr>
            <th id="address">Author</th>
            <td headers="address"><c:out value="${owner.address}"/></td>
        </tr>
        <tr>
            <th id="city">Publisher</th>
            <td headers="city"><c:out value="${owner.city}"/></td>
        </tr>
        <tr>
            <th id="telephone">Quantity</th>
            <td headers="telephone"><c:out value="${owner.telephone}"/></td>
        </tr>
        <tr>
            <th id="edition">Edition</th>
            <td headers="name"><c:out value=" ${owner.firstName}"/></td>
        </tr>
    </table>

    <spring:url value="{ownerId}/edit.html" var="editUrl">
        <spring:param name="ownerId" value="${owner.id}"/>
    </spring:url>
    <a href="${fn:escapeXml(editUrl)}" class="btn btn-default">Edit Books</a>

<%--    <spring:url value="{ownerId}/pets/new.html" var="addUrl">--%>
<%--        <spring:param name="ownerId" value="${owner.id}"/>--%>
<%--    </spring:url>--%>
<%--    <a href="${fn:escapeXml(addUrl)}" class="btn btn-default">Add New Pet</a>--%>

    <br/>
    <br/>
    <br/>
<%--    <h2 id="petsAndVisits">Pets and Visits + Medicines</h2>--%>

<%--    <table class="table table-striped" aria-describedby="petsAndVisits">--%>
<%--        <c:forEach var="pet" items="${owner.pets}">--%>

<%--            <tr>--%>

<%--                <th scope="col">--%>
<%--                    <dl class="dl-horizontal">--%>
<%--                        <dt>Name</dt>--%>
<%--                        <dd><c:out value="${pet.name}"/></dd>--%>
<%--                        <dt>Birth Date</dt>--%>
<%--                        <dd><petclinic:localDate date="${pet.birthDate}" pattern="yyyy-MM-dd"/></dd>--%>
<%--                        <dt>Type</dt>--%>
<%--                        <dd><c:out value="${pet.type.name}"/></dd>--%>
<%--                        <dt>--%>
<%--                            <spring:url value="/owners/{ownerId}/pets/{petId}/edit" var="petUrl">--%>
<%--                                <spring:param name="ownerId" value="${owner.id}"/>--%>
<%--                                <spring:param name="petId" value="${pet.id}"/>--%>
<%--                            </spring:url>--%>
<%--                            <a href="${fn:escapeXml(petUrl)}">Edit Pet</a>--%>
<%--                        </dt>--%>


<%--                    </dd>--%>


<%--                </th>--%>

<%--                <td>--%>
<%--                    <table class="table-condensed" aria-describedby="petsAndVisits">--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th id="visitDate">Visit Date</th>--%>
<%--                            <th id="visitDescription">Description</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>

<%--                        <c:forEach var="visit" items="${pet.visits}">--%>
<%--                            <tr>--%>
<%--                                <td headers="visitDate"><petclinic:localDate date="${visit.date}" pattern="yyyy-MM-dd"/></td>--%>
<%--                                <td headers="visitDescription"><c:out value="${visit.description}"/></td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>

<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <spring:url value="/owners/{ownerId}/pets/{petId}/visits/new" var="visitUrl">--%>
<%--                                    <spring:param name="ownerId" value="${owner.id}"/>--%>
<%--                                    <spring:param name="petId" value="${pet.id}"/>--%>
<%--                                </spring:url>--%>
<%--                                <a href="${fn:escapeXml(visitUrl)}">Add Visit</a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </td>--%>

<%--                <td>--%>
<%--                    <table class="table-condensed" aria-describedby="petsAndVisits+Medicine">--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th id="medicine">Medicine</th>--%>
<%--                            <th id="medicineDose">Dose</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>

<%--                        <c:forEach var="med" items="${pet.med}">--%>
<%--                            <tr>--%>
<%--                                <td headers="medicineName"><c:out value="${med.name}"/></td>--%>
<%--                                <td headers="medicineName"><c:out value="${med.dose}"/></td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>

<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <spring:url value="/owners/{ownerId}/pets/{petId}/medicine/new" var="medicineUrl">--%>
<%--                                    <spring:param name="ownerId" value="${owner.id}"/>--%>
<%--                                    <spring:param name="petId" value="${pet.id}"/>--%>
<%--                                </spring:url>--%>
<%--                                <a href="${fn:escapeXml(medicineUrl)}">Add Medicine</a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </td>--%>

<%--            </tr>--%>

<%--        </c:forEach>--%>
<%--    </table>--%>


</petclinic:layout>
