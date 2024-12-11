<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">About product</h1>

    <#list product.images as image>
        <img src="/image/${image.id}" height="60px"/>
    </#list>
    <b>Title: ${product.title}</b> <br>
    <b>Description: ${product.description}</b> <br>
    <b>Price: ${product.price} euro</b> <br>
    <b>City: ${product.city}</b> <br>
    <b>Author: <a href="/user-info/${product.user.id}">${product.user.name}</a></b> <br>
    <h6><a href="/product/delete/${product.id}">Delete product</a></h6>

</@t.template>
