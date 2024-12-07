<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<h1>Shop Flip-Flop</h1>
<hr>
<h4>About product: </h4>

<#list product.images as image>
    <img src="/image/${image.id}" height="60px"/>
    <b><a href="/image/delete/${image.id}">Delete photo</a></b>
</#list>
<b>Title: ${product.title}</b> <br>
<b>Description: ${product.description}</b> <br>
<b>Price: ${product.price} euro</b> <br>
<b>City: ${product.city}</b> <br>
<b>Author: <a href="/user-info/${product.user.id}">${product.user.name}</a></b> <br>
<h6><a href="/product/delete/${product.id}">Delete product</a></h6>

</body>
</html>
