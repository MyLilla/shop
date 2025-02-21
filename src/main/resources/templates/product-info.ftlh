<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">About product</h1>
    <br><br>

    <div class="container">
        <div class="row">
            <#list product.images as image>
                <div class="col">
                    <img src="/image/${image.id}" height="120px"/>
                </div>
            </#list>
        </div>
    </div>
    <br><br>
    <div class="text-center">
        <b>Title: ${product.title}</b> <br>
        <b>Description: ${product.description}</b> <br>
        <b>Price: ${product.price} euro</b> <br>
        <b>City: ${product.city}</b> <br>
        <b>Author: <a href="/user-info/${product.user.id}">${product.user.name}</a></b> <br>

        <br><br>
        <#if user.isAdmin(user)>
            <a class="btn btn-outline-danger mt-auto" href="/product/delete/${product.id}">Delete</a>
        </#if>
    </div>
    <br><br>
</@t.template>
