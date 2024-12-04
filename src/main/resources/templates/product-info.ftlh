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

<h1>${product.title}</h1>
<br><br>

<#list product.images as image>
    <img src="/image/${image.id}" height="60px"/>
    <p><a href="/image/delete/${image.id}">Delete photo</a></p>
</#list>
<h4>About:</h4> <br>
<p>${product.description}</p> <br>
<p>${product.city}</p> <br>
<p>${product.user.name}</p> <br>

<h3><a href="/product/delete/${product.id}">Delete product</a></h3>

</body>
</html>
