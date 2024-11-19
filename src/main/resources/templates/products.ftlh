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

    <h1>Products</h1>
    <br><br>

    <div>
        <#list products as product>
            <p>${product.title}</p> <br>
            <p>${product.price}</p> <br>

            <h2><a href="/product-info/${product.id}">About product...</a></h2>
        </#list>
    </div>

    <h2>Create new product:</h2>
    <form action="/product/create" method="post">
        <input name="title" type="text"> Title
        <input name="description" type="text"> Description
        <input name="price" type="number"> Price
        <input name="city" type="text"> City
        <input name="author" type="text"> Author

        <input type="submit" value="Add product">
    </form>
</div>

</body>
</html>
