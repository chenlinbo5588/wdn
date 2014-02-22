{include file="common_header.tpl"}
                <section>
                    <div class="slider_wrapper">
                        <div class="slider" id="scrollImg" style="height:800px;">
                            <div class="slider_item" style="background:url(/img/home/banner1.jpg) no-repeat 50% 50%;"></div>
                            <div class="slider_item" style="background:url(/img/home/banner2.jpg) no-repeat 50% 50%;"></div>
                        </div>
                    </div>
                    <ul class="site_links clearfix">
                        <li>
                            <h3 class="title txt_abouts_us">关于我们,About Us</h3>
                            <div class="row" style="margin:20px 0 0 10px;">
                                <figure>
                                    <a href="javascript:void(0)"><img src="/img/home_about_us.png"/></a>
                                    <figcaption>我们始终追求高品质\低价位</figcaption>
                                </figure>
                             </div>
                        </li>
                        <li class="two_row">
                            <div class="row" style="margin-bottom: 8px;">
                                <h3 class="title txt_latest">最新,Latest</h3>
                                <figure style="margin:20px 0 0 10px;">
                                    <a href="javascript:void(0)"><img src="/img/home_news.png"/></a>
                                    <figcaption style="font-size:12px">最新报道</figcaption>
                                </figure>
                            </div>
                            <div class="row">
                                <figure style="margin:16px 0 0 10px;">
                                    <a href="javascript:void(0)"><img src="/img/home_news2.png"/></a>
                                    <figcaption>同一个祖国、共同的大爱</figcaption>
                                    <em>我们永远同在……</em>
                                </figure>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <h3 class="title txt_affiliate">加盟,Affiliate</h3>
                                <figure style="margin:20px 0 0 10px;">
                                    <a href="javascript:void(0)"><img src="/img/home_join_us.png"/></a>
                                    <figcaption style="margin-top:10px">诚邀加盟/携手共赢</figcaption>
                                </figure>
                             </div>
                        </li>
                        <li class="two_row">
                            <div class="row" style="margin-bottom: 8px;">
                                <h3 class="title txt_product">产品,About Us</h3>
                                <figure style="margin:20px 0 0 10px;">
                                    <a href="javascript:void(0)"><img src="/img/home_sport.jpg"/></a>
                                    <figcaption></figcaption>
                                </figure>
                            </div>
                            <div class="row">
                                <figure style="margin:16px 0 0 10px;">
                                    <a href="javascript:void(0)"><img src="/img/home_outer_door_sport.png"/></a>
                                    <figcaption>用时尚诠释，让经典永恒。</figcaption>
                                </figure>
                            </div>
                        </li>
                    </ul>
                </section>
                <script src="/js/jquery-1.9.1.min.js"></script>
                <script src="/js/jquery.cycle.all.js"></script>
                <script>
                    $('#scrollImg').cycle({
                        fx:"fade",
                        timeout: 1500,
                        center:true,
                        pause:true,
                        pagerEvent: "click.cycle"
                    });
                </script>
{include file="common_footer.tpl"}