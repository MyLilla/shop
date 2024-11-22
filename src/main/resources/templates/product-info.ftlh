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
    <img src="/image/${image.id}" height="60px"/> <br>

    <p><a href="/image/delete/${image.id}">Delete photo</a></p>
</#list>
<h2>About:</h2> <br>
<p>${product.description}</p> <br>
<p>${product.city}</p> <br>
<p>${product.author}</p> <br>

<h1><a href="/product/delete/${product.id}">Delete product</a></h1>

</body>
</html>
