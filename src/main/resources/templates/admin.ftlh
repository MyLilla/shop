<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<header>
</header>
<h1>Shop Flip-Flop</h1>
<hr>

<a href="/logout">LogOut</a>
<br><br>
<hr>

<h4>Admin control</h4>

<table users border="1">
    <tr>
        <th>Name:</th>
        <th>Email:</th>
        <th>Phone number:</th>
        <th>Roles:</th>
        <th>Active:</th>
        <th></th>
        <th></th>
    </tr>

    <#list users as user>
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
            <td><#list user.roles as role><${role.name()}<#sep>, </#list></td>
            <td><#if user.active >
                    Active
                <#else > No Active
                </#if></td>
            <td>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="submit" value="Ban...">
                </form>
            </td>
            <td><a href="/admin/user/edit/${user.id}">Edit...</a></td>
        </tr>
    <#else>
        <h3>There are no users</h3>
    </#list>
</table>

<hr>
<h2>Create new user:</h2>
<form action="/admin/user/create/" method="post" enctype="multipart/form-data">
    Name: <input name="name" type="text"> <br>
    Email: <input name="email" type="email"> <br>
    Phone number: <input name="phoneNumber" type="number"> <br>
    Password: <input name="password" type="password"> <br>
    Photo: <input name="photo" type="file"> <br>
    <input type="submit" value="Add user">
</form>
</body>
</html>
