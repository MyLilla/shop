<#import "blocks/template.ftlh" as t>
<@t.template user>

    <table class="table table-hover table-dark">
        <h1 style="text-align: center">Admin control</h1>
        <hr>
        <tr>
            <th scope="col">Name:</th>
            <th scope="col">Email:</th>
            <th scope="col">Phone number:</th>
            <th scope="col">Roles:</th>
            <th scope="col">Active:</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>

        <#list users as user>
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.phoneNumber}</td>
                <td><#list user.roles as role><${role.name()}<#sep>, </#list></td>
                <td><#if user.active >
                        Active
                    <#else > No Active
                    </#if></td>
                <td>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="submit" class="btn btn-light" value="Ban...">
                    </form>
                </td>
                <td><a href="/admin/user/edit/${user.id}">Edit...</a></td>
            </tr>
        <#else>
            <h3>There are no users</h3>
        </#list>
    </table>

    <hr>
    <h2>Create new user:</h2>
    <form action="/admin/user/create/" method="post" enctype="multipart/form-data">
        Name: <input name="name" type="text"> <br>
        Email: <input name="email" type="email"> <br>
        Phone number: <input name="phoneNumber" type="number"> <br>
        Password: <input name="password" type="password"> <br>
        Photo: <input name="photo" type="file"> <br>
        <input type="submit" value="Add user">
    </form>
</@t.template>
