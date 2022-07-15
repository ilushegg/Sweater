<#import "parts/common.ftlh" as c>

<@c.page>
${message?ifExists}
<h5>${username}</h5>
<form method="post">

    <div class="mb-3"><label>Password: </label class="form-label"><input class="form-control" type="password" name="password"/></div>

    <div class="mb-3"><label>Email: </label class="form-label"><input class="form-control" type="email" name="email" value="${email!''}"/></div>

    <input type="hidden" name="_csrf" value="${_csrf.token}" />




        <button type="submit" class="btn btn-primary">Save</button>



</form>

</@c.page>