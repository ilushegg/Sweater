<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="mb-3"><label>User Name: </label class="form-label"><input class="form-control" type="text" name="username"/></div>
    <div class="mb-3"><label>Password: </label class="form-label"><input class="form-control" type="password" name="password"/></div>
    <#if isRegisterForm>
    <div class="mb-3"><label>Email: </label class="form-label"><input class="form-control" type="email" name="email"/></div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <#if !isRegisterForm>
        <a href="/registration">Sign Up</a>
        <button type="submit" class="btn btn-primary">Sign In</button>
    <#else>
        <button type="submit" class="btn btn-primary">Sign Up</button>
    </#if>


</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
            <button type="submit" class="btn btn-primary ">Sign Out</button>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </form>
</#macro>