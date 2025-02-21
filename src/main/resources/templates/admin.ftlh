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

    <div class="container">
        <form action="/admin/user/create/" method="post" enctype="multipart/form-data">
            <div class="input-group mb-3">
                <label for="name" class="input-group-text">Name: </label>
                <input name="name" type="text" id="name">
            </div>
            <div class="input-group mb-3">
                <label for="email" class="input-group-text">Email: </label>
                <input name="email" type="email" id="email">
            </div>
            <div class="input-group mb-3">
                <label for="phoneNumber" class="input-group-text">Phone number: </label>
                <input name="phoneNumber" type="number" class="form-control" id="phoneNumber">
            </div>
            <div class="input-group mb-3">
                <label for="password" class="input-group-text">Password: </label>
                <input name="password" type="password" id="password">
            </div>
            <div class="mb-3">
                <label for="photo" class="form-label primary">Image 1: </label>
                <input class="input-group-text" name="photo" type="file" id="photo">
            </div>
            <input type="submit" class="btn btn-primary" value="Add user">
        </form>
    </div>
    <br><br>
</@t.template>
