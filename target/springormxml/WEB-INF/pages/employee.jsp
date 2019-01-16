<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Document</title>
   
</head>
<body>
       <table class="empTable"  table border="1" cellpadding="5">
               <tr>
                   <th width="80">ID</th>

                   <th width="120">Age</th>
                   <th width="120">Education</th>
                   <th width="120">First Name</th>
                   <th width="120">Last Name</th>
                   <th width="120">Salary</th>
                   <th width="60">Edit</th>
                   <th width="60">Delete</th>
               </tr>

               <c:forEach items="${employeeList}" var="employee">
                   <tr>
                           <td><c:out value="${employee.employeeId}" /></td>
                           <td><c:out value="${employee.age}" /></td>
                             <td><c:out value="${employee.education}" /></td>
                           <td><c:out value="${employee.firstName}" /></td>
                           <td><c:out value="${employee.lastName}" /></td>

                           <td><c:out value="${employee.salary}" /></td>

                       <td><a href="<c:url value='/employee/edit/id=${employee.employeeId}' />" >Edit</a></td>
                       <td><a href="<c:url value='employee/remove/id=${employee.employeeId}' />" >Delete</a></td>
       </tr>
   </c:forEach>
   </table>

            <a href="user1.jsp">Add</a>

</body>
</html>