<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="mb-3"><label class="form-label">User Name: </label>
    <input class="form-control ${(usernameError??)?string('is-invalid', '')}" type="text" name="username" value="<#if user??>${user.username}</#if>"/>
        <#if usernameError??>
                            <div class="invalid-feedback">
                                      ${usernameError}
                                    </div>
                            </#if>
    </div>
    <div class="mb-3"><label class="form-label ">Password: </label>
    <input class="form-control ${(passwordError??)?string('is-invalid', '')}" type="password" name="password"/>
    <#if passwordError??>
                                <div class="invalid-feedback">
                                          ${passwordError}
                                        </div>
                                </#if>
    </div>

    <#if isRegisterForm>
    <div class="mb-3"><label class="form-label ">Repeat Password: </label>
    <input class="form-control ${(password2Error??)?string('is-invalid', '')}" type="password" name="password2"/>
        <#if password2Error??>
                                    <div class="invalid-feedback">
                                              ${password2Error}
                                            </div>
                                    </#if>
        </div>
    <div class="mb-3"><label class="form-label ">Email: </label><input class="form-control ${(emailError??)?string('is-invalid', '')}" type="email" name="email" value="<#if user??>${user.email}</#if>"/>
     <#if emailError??>
                                        <div class="invalid-feedback">
                                                  ${emailError}
                                                </div>
                                        </#if></div>

          <div class="g-recaptcha" data-sitekey="6LehJ_UgAAAAANv-E93kwPRAfk-rM6T0DlhI45YE">
          </div>
          <#if captchaError??>
          <div class="alert alert-danger" role="alert">
              ${captchaError}
          </div>
          </#if>

          <br/>


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

            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary "><#if user??>Sign Out<#else>Log in</#if></button>
        </form>
</#macro>