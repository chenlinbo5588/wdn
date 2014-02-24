{include file="common_header.tpl"}
{include file="logo_bg.tpl"}
                    <section>
                        <div class="brand clearfix">
                            <div id="brand_box">
                                <div class="brand_title">
                                    <h3>店铺形象/门店信息查询</h3>
                                    <h3>STORE IMAGE/STORE INFORMATION</h3>
                                </div>
                                <div class="store_list clearfix">
                                    <div class="store_pager">
                                        <a href="{$prev_link}" class="page_prev"></a>
                                        <a href="{$next_link}" class="page_next"></a>
                                    </div>
                                    {foreach from=$list item=item}
                                    <div class="store_item">
                                        <img src="/img/store/{$item['filename']|escape}"/>
                                        <span>{$item['showname']}</span>
                                    </div>
                                    {/foreach}
                                    {*
                                    <div class="store_item">
                                        <img src="/img/store/上海合庆店.jpg"/>
                                        <span>上海临汾二店</span>
                                    </div>
                                    <div class="store_item">
                                        <img src="/img/store/上海吴泾店.jpg"/>
                                        <span>上海临汾二店</span>
                                    </div>
                                    
                                    <div class="store_item">
                                        <img src="/img/store/上海颛桥店.jpg"/>
                                        <span>上海临汾二店</span>
                                    </div>
                                    <div class="store_item">
                                        <img src="/img/store/天目山店.jpg"/>
                                        <span>上海临汾二店</span>
                                    </div>
                                    <div class="store_item">
                                        <img src="/img/store/宝山顾村店.jpg"/>
                                        <span>上海临汾二店</span>
                                    </div>
                                    *}
                                </div>
                                <div class="pager_footer">
                                    <a href="{$prev_link}" class="page_prev"></a>
                                    <span>{$current_page}/{$total_page}</span>
                                    <a href="{$next_link}" class="page_next"></a>
                                </div>
                            </div>
                        </div>
                    </section>
{include file="common_footer.tpl"}