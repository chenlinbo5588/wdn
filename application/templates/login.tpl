{include file="common_header.tpl"}
<div class="container">
    <form class="form-signin" role="form" name="login-form" action="{url_path('login','submit',array(),true)}" method="post">
        <h2 class="form-signin-heading">登录</h2>
        
        {if (!empty($errorMsg)) }
        <div class="alert alert-warning">{$errorMsg['message']}</div>
        {/if}
        <div class="form-group">
            <label>用户名</label>
            <input type="text" name="username" class="form-control"  value="" placeholder="用户名">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" name="password" class="form-control"  placeholder="密码">
        </div>
        
        <label class="checkbox">
            <input type="checkbox" name="remember-me" value="remember-me"> 记住用户名
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>
</div>
{include file="section_footer.tpl"}
{include file="common_footer.tpl"}