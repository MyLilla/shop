<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Edit user: ${user.name}s</h1>
    <br>

    <form action="/admin/user/edit" method="post">
        <#list roles as role >

            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
            </label>
            <br>
        </#list>
        <input type="hidden" name="userId" value="${user.id}">
        <br>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <br><br>
</@t.template>
