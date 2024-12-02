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

<h2>Log in:</h2>
<form action="/login" method="post">
    Username: <input name="username" type="email"> <br>
    Password: <input name="password" type="password"> <br>

<#--    <input type="hidden" value="_csrf">-->
    <input type="submit" value="Enter">
</form>

<a href="/registration">Registration</a>

</body>
</html>
