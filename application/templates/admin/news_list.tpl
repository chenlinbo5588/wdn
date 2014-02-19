
          <h1 class="page-header">新闻公告管理</h1>

          <div class="row placeholders">
            <ul class="nav nav-pills">
                <li><a href="{url_path('news','add',array(),true)}">+增加新闻公告</a></li>
             </ul>
          </div>

          <h2 class="sub-header">新闻公告列表</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>标题</th>
                  <th>状态</th>
                  <th>创建时间</th>
                  <th>更新时间</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
               {foreach from=$list item=item}
                <tr>
                  <td>{$item['news_id']}</td>
                  <td>{$item['title']}</td>
                  <td>{$item['status']}</td>
                  <td>{$item['createtime']}</td>
                  <td>{$item['updatetime']}</td>
                  <td>{foreach from=$item['op'] item=op}{$op}{/foreach}</td>
                </tr>
                {/foreach}
              </tbody>
            </table>
            {include file="pagination.tpl"}
            
            <script>
            $(function(){
                $("a.delete").bind("click",function(e){
                    if(confirm("确定要删除改记录吗")){
                        location.href= $(e.target).attr("data-href");
                    }
                });
            });
            </script>
          </div>
