{include file="common_header.tpl"}
                    <section>
                        <div class="slider_wrapper">
                            <div class="slider" id="scrollImg" style="height:750px;">
                                <div class="slider_item" style="background:url(/img/home/banner1.jpg) no-repeat 50% 50%;"></div>
                                <div class="slider_item" style="background:url(/img/home/banner2.jpg) no-repeat 50% 50%;"></div>
                            </div>
                        </div>
                        <ul class="site_links clearfix">
                            <li>
                                <h3 class="title txt_abouts_us">关于我们,About Us</h3>
                                <div class="row" style="margin:20px 0 0 10px;">
                                    <p>
                                        <a href="{url_path('index','about_us',array(),true)}"><img src="/img/home_about_us.png"/></a>
                                        <span>我们始终追求高品质\低价位</span>
                                    </p>
                                </div>
                            </li>
                            <li class="two_row">
                                <div class="row" style="margin-bottom: 8px;">
                                    <h3 class="title txt_latest">最新,Latest</h3>
                                    <p style="margin:20px 0 0 10px;">
                                        <a href="javascript:void(0)"><img src="/img/home_news.png"/></a>
                                        <span style="font-size:12px">最新报道</span>
                                    </p>
                                </div>
                                <div class="row">
                                    <p style="margin:16px 0 0 10px;">
                                        <a href="http://gongyi.qq.com/loveplan/index.htm" target="_blank"><img src="/img/home_news2.png"/></a>
                                        <span>同一个祖国、共同的大爱</span>
                                        <em style="display:block">我们永远同在……</em>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <h3 class="title txt_affiliate">加盟,Affiliate</h3>
                                    <p style="margin:20px 0 0 10px;">
                                        <a href="javascript:void(0)"><img src="/img/home_join_us.png"/></a>
                                        <span style="margin-top:10px">诚邀加盟/携手共赢</span>
                                    </p>
                                </div>
                            </li>
                            <li class="two_row">
                                <div class="row" style="margin-bottom: 8px;">
                                    <h3 class="title txt_product">产品,About Us</h3>
                                    <p style="margin:20px 0 0 10px;">
                                        <a href="javascript:void(0)"><img src="/img/home_sport.jpg"/></a>
                                        <span></span>
                                    </p>
                                </div>
                                <div class="row">
                                    <p style="margin:16px 0 0 10px;">
                                        <a href="javascript:void(0)"><img src="/img/home_outer_door_sport.png"/></a>
                                        <span>用时尚诠释，让经典永恒。</span>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </section>
                    <script src="/js/jquery-1.9.1.min.js"></script>
                    <script src="/js/jquery.cycle.all.js"></script>
                    <script>
                        $('#scrollImg').cycle({
                            fx:"fade",
                            timeout: 2000,
                            center:true,
                            pause:false,
                            pagerEvent: "click.cycle"
                        });
                    </script>
{include file="common_footer.tpl"}