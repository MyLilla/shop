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

        <h2>About:</h2> <br>
        <p>${product.description}</p> <br>
        <p>${product.city}</p> <br>
        <p>${product.author}</p> <br>

    <h1><a href="/product/delete/${product.id}">Delete product</a></h1>

</body>
</html>
