<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">All products</h1>
    <#list products as product>
        <span class="input-group-text">${product.title}</span>
        <#list product.images as image>
            <img src="/image/${image.id}" height="60px" alt="..."/>
        </#list>
        <span class="input-group-text">${product.price}</span>>
        <p><a href="/product-info/${product.id}">About product...</a></p>
    <#else>
        <h3>There are no products</h3>
    </#list>

    <#if user.email??>
        <hr>
        <h2 style="text-align: center">Create new product:</h2>

        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="input-group mb-3">
                <span class="input-group-text">Title: </span>
                <input name="title" type="text">
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">Description: </span>
                <input name="description" type="text">
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">Price: </span>
                <input type="text" class="form-control">
                <span class="input-group-text">.00 euro</span>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">City: </span>
                <input name="city" type="text">
            </div>

            Image 1: <input name="file1" type="file"> <br>
            Image 2: <input name="file2" type="file"> <br>
            Image 3: <input name="file3" type="file"> <br>
            <input type="submit" class="btn btn-primary" value="Add product">
        </form>
    </#if>
</@t.template>
