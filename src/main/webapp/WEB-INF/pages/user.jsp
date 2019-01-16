<!DOCTYPE html>
<%@ page isELIgnored="false" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="/employee/add"  method="GET">
     Employee Id: <input type="number" name="employeeId" id="employeeId" value="${employee.employeeId}"><br>
       FirstName: <input type="text" name="firstName" id="firstName" value="${employee.firstName}"><br>
       LastName : <input type="text" name="lastName" id="lastName" value="${employee.lastName}"><br>
             Age: <input type="number" name="age" id="age" value="${employee.age}"><br>
       Education: <input type="text" name="education" id="education" value="${employee.education}"><br>
          Salary: <input type="number" name="salary" id="salary" value="${employee.salary}"><br>
       <input type="submit" value="Submit">
    </form>
    ${employee}
</body>
</html>