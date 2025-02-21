<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">Registration</h1>

    <form action="/registration" method="post" enctype="multipart/form-data">
        <div class="input-group mb-3">
            <span class="input-group-text">Name: </span>
            <input name="name" type="text" class="form-control"> <br>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Email: </span>
            <input name="email" type="email" class="form-control"> <br>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Password: </span>
            <input name="password" type="password" class="form-control"> <br>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Phone Number: </span>
            <input name="phoneNumber" type="number" class="form-control"> <br>
        </div>
        <#--    Photo: <input name="photo" type="file"> <br>-->
        <#--    <input type="hidden" value="_csrf">-->
        <input type="submit" class="btn btn-primary" value="Go">
    </form>
    <br><br>
    <a href="/" class="btn btn-outline-dark mt-auto">Go back</a>
    <br><br>
    <br><br>
</@t.template>