<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<header>
</header>
<h1>Shop Flip-Flop</h1><hr>

<#if user.email??>
    <h4>User: <i>${user.name}</i></h4>
    <a href="/logout">LogOut</a>
<#else>
    <a href="/login">Enter</a>
</#if>
<br><br>
<hr>

<h4>All Products</h4>
<#list products as product>
    <p>${product.title}</p>
    <p>${product.price}</p>

    <p></b><a href="/product-info/${product.id}">About product...</a></p>
<#else>
    <h3>There are no products</h3>
</#list>

<#if user.email??>
    <hr>
    <h2>Create new product:</h2>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input name="title" type="text"> <br>
        Description: <input name="description" type="text"> <br>
        Price: <input name="price" type="number"> <br>
        City: <input name="city" type="text"> <br>

        Image 1: <input name="file1" type="file"> <br>
        Image 2: <input name="file2" type="file"> <br>
        Image 3: <input name="file3" type="file"> <br>
        <input type="submit" value="Add product">
    </form>
</#if>
</body>
</html>
