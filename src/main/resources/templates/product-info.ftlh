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

<div class="container text-center">

    <h1>${product.title}</h1>
    <br><br>

    <div>
        <h2>About:</h2> <br>
        <p>${product.description}</p> <br>
        <p>${product.city}</p> <br>
        <p>${product.author}</p> <br>
    </div>

    <h2><a href="/product/delete/${product.id}">Delete product...</a></h2>
</div>

</body>
</html>
