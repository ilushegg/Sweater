<a class="btn btn-primary mt-5" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Edit Message
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
                    <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="tag" name="tag" placeholder="Tag" value="<#if message??>${message.tag?ifExists}</#if>"/>
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
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
            <button class="btn btn-primary" type="submit">Save</button>
        </form>
    </div>
