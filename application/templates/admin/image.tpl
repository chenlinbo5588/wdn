          <h1 class="page-header">{$sideMenuName}</h1>
          <div class="row placeholders">
            <ul class="nav nav-pills">
                <li><a href="javascript:history.go(-1);">返回</a></li>
             </ul>
          </div>

          <div class="table-responsive">
              {if $message['feedback'] }
                <div id="feedback" class="alert alert-{$message['className']}">{$message['feedback']}</div>
                <script>
                    $(function(){
                        setTimeout(function(){
                            $("#feedback").fadeOut(function(){
                                $(this).remove();
                            });
                        },3000);
                    });
                </script>
                {/if}
              <form role="form" name="addForm" action="{url_path('image','save',array(),true)}" method="post">
                <input type="hidden" name="name" value="首页"/>
                <div class="form-group" >
                    <h2>首页轮播图片</h2>
                </div>
                <div class="form-group" >
                    <button type="submit" class="btn btn-primary">保存</button>
                    <p class="help-block" style="color:red">点击保存不会进行发布,请放心操作.</p>
                    <p class="help-block" style="color:red">请上传JPG或者JPEG图片，单张上传图片最大200K.</p>
                    <em class="Uploader" allowSize="200KB" allowFile="*.jpg;*.jpeg;"></em>
                    <a class="upload-button" href="javascript:void(0);"><span id="UploaderPlaceholder_1"></span></a>
                    <div id="UploaderProgress_1"></div>
                    <div id="UploaderFeedBack_1"></div>
                </div>
                <div class="form-group" >    
                    <div class="row" id="picList">
                        {foreach from=$data['images'] item=pic}
                        <div class="col-xs-6 col-md-3">';
                            <input type="hidden" name="file_id[]" value="{$pic['aid']}"/>
                            <a href="javascript:void(0);" class="thumbnail"><img src="/img/Files/{$pic['path']}" alt="点击图片删除" title="点击图片删除"></a>
                        </div>';
                        {foreachelse}
                            <div id="empty_text">图片列表为空</div>
                        {/foreach}
                    </div>
                </div>
              </form>
          </div>
        {include file="common_upload.tpl"}
		<script>
            var action = '{$action}';
            $.loadingbar({
                urls:[new RegExp("deleteImg")],text:"操作进行中，请稍等"
            });
			
            $("#picList").delegate("a","click",function(e){
                var target = $(e.target);
                
                if(confirm("确定要删除该图片吗")){
                    if(action == 'add'){
                        target.closest("div").remove();
                    }else{
                       
                        $.ajax({
                            type:"POST",
                            url:'{url_path('image','deleteImg',array(),true)}',
                            data: {
                                name:$("input[name=name]").val(),file_id:target.closest("div").find("input").val()
                            },
                            dataType:"json",
                            success:function(resp){
                                if(resp.code == 200){
                                    target.closest("div").remove();
                                }else{
                                    alert("删除失败,请重新尝试");
                                }
                            }
                        });
                    }
                }
            });
		
            $(function(){
                var fileSuccess = function(file, serverData){
                    var response = $.parseJSON(serverData);
                    console.log(serverData);
                    if(0 == response.error){
                        var html = '<div class="col-xs-6 col-md-3">';
                        html += '<input type="hidden" name="file_id[]" value="' + response.id + '"/>';
                        html += '<a href="javascript:void(0);" class="thumbnail"><img src="' + response.url  + '" alt="点击图片删除" title="点击图片删除"></a>'
                        html += '</div>';
                        $("#picList").append(html);
                    }
                    
                    try {
                        var progress = new FileProgress(file, this.customSettings.progressTarget);
                        progress.setComplete();
                        progress.setStatus("Complete.");
                        progress.toggleCancel(false);

                        if(typeof(this.customSettings.callback) != "undefined"){
                            this.customSettings.callback(file,serverData);
                        }
                        
                    } catch (ex) {
                        this.debug(ex);
                    }
    
                }
            
                $(".Uploader").each(function(index){
                    createSwfUpload(index + 1,$(this).attr("allowSize"),$(this).attr("allowFile"),fileSuccess);
                });
            });
        </script>
        