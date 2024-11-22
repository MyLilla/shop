<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<header>
    <div class="container"></div>
</header>

<h1>Products</h1>
<br><br>

<#list products as product>
    <p>${product.title}</p> <br>
    <p>${product.price}</p> <br>

    <p><a href="/product-info/${product.id}">About product...</a></p>
<#else>
    <h3>There are no products</h3>
</#list>


<h1>Create new product:</h1>
<form action="/product/create" method="post">
    Title: <input name="title" type="text">  <br>
    Description: <input name="description" type="text"> <br>
    Price: <input name="price" type="number"> <br>
    City: <input name="city" type="text"> <br>
    Author: <input name="author" type="text"> <br>

    <input type="submit" value="Add product">
</form>

</body>
</html>
