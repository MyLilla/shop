<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<h1>Shop Flip-Flop</h1>
<hr>
<h4>Edit user: ${user.name}</h4>
<br>

<form action="/admin/user/edit" method="post">
    <#list roles as role >

        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
        </label>
    </#list>
    <input type="hidden" name="userId" value="${user.id}"><br>
    <button type="submit">Save</button>
</form>


</body>
</html>
