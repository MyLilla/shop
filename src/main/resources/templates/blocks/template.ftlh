<#macro template user>
    <!DOCTYPE html>
    <html lang="en">
    <head>

        <meta charset="utf-8">
        <link rel="stylesheet" href="/static/css/style.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous">

        <title>Shop</title>
    </head>
    <body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="/">
                <span class="navbar-brand mb-0 h1">Shop Flip-Flop</span>
            </a>

            <div class="dropdown text-end">
                <form class="d-flex">
                    <#if user.email??>
                        <b href="/profile">
                            <img style="margin-right: 10px;" src="/static/images/avatar.png" alt="mdo"
                                 width="32" height="32" class="rounded-circle">
                        </b>
                        <a href="/logout" class="btn btn-outline-dark me-2" style="margin-right: 10px;" type="button">
                            LogOut </a>
                        <#if user.isAdmin(user)>
                            <a href="/admin" class="btn btn-outline-danger" style="margin-right: 10px;" type="button">
                                Users </a>
                        </#if>
                    <#else>
                        <button class="btn btn-outline-success me-2" type="button" style="margin-right: 10px;"
                                onclick="window.location.href = '/login'">
                            Enter
                        </button>
                    </#if>
                </form>
            </div>
        </div>
    </nav>

    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Shop in style</h1>
                <p class="lead fw-normal text-white-50 mb-0">With this shop page you can do nothing</p>
            </div>
        </div>
    </header>

    <div class="container mt-4">
        <#nested/>
    </div>

    <footer class="py-5 bg-dark">
        <div class="container"><p class="m-0 text-center text-white">LillaMy &copy; 2024</p></div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>
