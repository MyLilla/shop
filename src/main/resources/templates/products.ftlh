<#import "blocks/template.ftlh" as t>
<@t.template user>

    <h1 style="text-align: center">All products</h1>

    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <#list products as product>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="/image/${product.previewImageId}" alt="..."/>
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">${product.title}</h5>
                                    $${product.price}
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="/product/${product.id}">More info</a></div>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </section>


    <#if user.email??>
        <hr>
        <h2 style="text-align: center">Create new product:</h2>
        <div class="container">
            <form action="/product/create" method="post" enctype="multipart/form-data">
                <div class="input-group mb-3">
                    <span class="input-group-text">Title: </span>
                    <input name="title" type="text">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">Description: </span>
                    <input name="description" type="text">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">Price: </span>
                    <input name="price" type="text" class="form-control">
                    <span class="input-group-text">.00 euro</span>
                </div>
                <div class="input-group mb-3">
                    <label class="input-group-text">City: </label>
                    <input name="city" type="text">
                </div>

                <div class="mb-3">
                    <label for="formFile1" class="form-label primary">Image 1: </label>
                    <input class="input-group-text" name="file1" type="file" id="formFile1">
                </div>
                <div class="mb-3">
                    <label for="formFile2" class="form-label primary">Image 2: </label>
                    <input class="input-group-text" name="file2" type="file" id="formFile2">
                </div>
                <div class="mb-3">
                    <label for="formFile3" class="form-label primary">Image 3: </label>
                    <input class="input-group-text" name="file3" type="file" id="formFile3">
                </div>
                <input type="submit" class="btn btn-primary" value="Add product">
            </form>
        </div>
        <br><br>
        <br><br>
    </#if>
</@t.template>
