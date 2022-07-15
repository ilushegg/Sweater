<#import "parts/common.ftlh" as c>

<@c.page>
    <form class="row row-cols-lg-auto g-3 align-items-center" method="get" action="/main">
    <div class = "col-12">
        <input class="form-control" type="text" name="filter" value="${filter?ifExists}" placeholder="Search by Tag">
    </div>
        <button type="submit" class="btn btn-primary">Search</button>

    </form>

    <a class="btn btn-primary mt-5" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add New Message
      </a>
    <div class="collapse <#if message??>show</#if> mt-3" id="collapseExample">
        <form class="row row-cols-lg-auto g-3 align-items-center" method="post" enctype="multipart/form-data">
        <div class = "col-12">
                    <input class="form-control ${(textError??)?string('is-invalid', '')}" type="text" name="text" placeholder="Add a message" value="<#if message??>${message.text}</#if>"/>
                    <#if textError??>
                    <div class="invalid-feedback">
                              ${textError}
                            </div>
                    </#if>
                </div>
        <div class = "col-12">
                    <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="text" name="text" placeholder="Tag" value="<#if message??>${message.tag}</#if>"/>
                    <#if tagError??>
                    <div class="invalid-feedback">
                              ${tagError}
                            </div>
                    </#if>
                </div>

        <div class = "col-12">
            <input class="form-control" type="file" name="file">
        </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit">Add</button>
        </form>
    </div>
<div class="row row-cols-1 row-cols-md-3 g-4">
    <#list messages as message>

    <div class="col">
    <div class="card my-3" style="width: 18rem;">
        <div>
                    <#if message.filename??>
                        <img class="card-img-top" src="/img/${message.filename}">
                    </#if>
                </div>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <div class="card-footer">${message.authorName}</div>
    </div>
    </div>

    <#else>
        No messages
    </#list>
   </div>
</@c.page>