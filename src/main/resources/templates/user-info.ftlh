<#import "blocks/template.ftlh" as t>
<@t.template userByPrincipal>

<h1 style="text-align: center">About user: ${user.name}</h1>
<br>

<#--<img src="/image/${user.avatar}" height="60px"/>-->
<b>Name: ${user.name}</b> <br>
<b>Email: ${user.email}</b> <br>
<b>Phone number: ${user.phoneNumber}</b> <br>

</@t.template>
