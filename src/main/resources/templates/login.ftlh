<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Log in: </h1>

    <form action="/login" method="post">
        <div class="input-group mb-3">
            <span class="input-group-text">Email: </span>
            <input type="email" name="username" class="form-control">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Password: </span>
            <input type="password" name="password" class="form-control">
        </div>
        <#--    <input type="hidden" value="_csrf">-->
        <button type="submit" class="btn btn-primary">Enter</button>
    </form>
    <br>
    <a href="/registration" class="btn btn-outline-danger mt-auto">Registration</a>
    <br><br>
    <br><br>
</@t.template>
