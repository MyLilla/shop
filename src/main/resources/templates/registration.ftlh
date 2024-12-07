<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<header>
</header>
<h2>Products</h2>
<br><br>

<h2>Registration:</h2>
<form action="/registration" method="post" enctype="multipart/form-data">
    Name: <input name="name" type="text"> <br>
    Email: <input name="email" type="email"> <br>
    Password: <input name="password" type="password"> <br>
    Phone Number: <input name="phoneNumber" type="number"> <br>
    <#--    Photo: <input name="photo" type="file"> <br>-->
    <#--    <input type="hidden" value="_csrf">-->
    <input type="submit" value="Go">
</form>

<#--<#if errorMessage>-->
<#--    <h1 style="color: red">${errorMessage}</h1>-->
<#--</#if>-->

<a href="/">Go back</a>

</body>
</html>
