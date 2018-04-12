
<div>
<form action="search" method="post">
    <div>
    <input type="text"/>
    <button>搜索</button>
    </div>
    <div>
    <input type="radio" name="searchMode" value='c2e' checked /><label>中文->English</label>
    <input type="radio" name="searchMode" value="e2c"/><label>English->中文</label>
    </div>
</form>
</div>
<div>
${pair?if_exists}
    <#--<#list pairs as p>-->
        <#--${p}-->
    <#--</#list>-->
</div>