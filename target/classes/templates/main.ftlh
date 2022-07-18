<#import "parts/common.ftlh" as c>

<@c.page>
    <form class="row row-cols-lg-auto g-3 align-items-center" method="get" action="/main">
    <div class = "col-12">
        <input class="form-control" type="text" name="filter" value="${filter?ifExists}" placeholder="Search by Tag">
    </div>
        <button type="submit" class="btn btn-primary">Search</button>

    </form>
<#include "parts/messageEdit.ftlh" />

<#include "parts/messageList.ftlh" />

</@c.page>