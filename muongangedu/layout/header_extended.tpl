    <noscript>
        <div class="alert alert-danger">{LANG.nojs}</div>
    </noscript>
    <header>
        <div class="section-header">
            <div class="wraper">
                <div id="header">
                    <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{BANNER_SRC}" alt="{SITE_NAME}"></a>
                    <!-- BEGIN: site_name_h1 -->
                    <h1>{SITE_NAME}</h1>
                    <!-- END: site_name_h1 -->
                    <!-- BEGIN: site_name_span -->
                    <span class="site_name">{SITE_NAME}</span>
                    <!-- END: site_name_span -->
                </div>
            </div>
        </div>
    </header>
    <div class="section-nav">
        <div class="wraper">
            <nav class="second-nav" id="menusite">
                [MENU_SITE]
            </nav>
        </div>
    </div>
    <section class="section-body">
        <div class="wraper">
            <div class="container">
                <nav class="third-nav">
                    <div class="row">
                        <div class="col-xs-24 col-sm-18 col-md-18">
                            <!-- BEGIN: breadcrumbs -->
                            <div class="breadcrumbs-wrap">
                                <div class="display">
                                    <a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                                    <ul class="breadcrumbs list-none"></ul>
                                </div>
                                <ul class="subs-breadcrumbs"></ul>
                                <ul class="temp-breadcrumbs hidden" itemscope itemtype="https://schema.org/BreadcrumbList">
                                    <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{THEME_SITE_HREF}" itemprop="item" title="{LANG.Home}"><span itemprop="name">{LANG.Home}</span></a><i class="hidden" itemprop="position" content="1"></i></li>
                                    <!-- BEGIN: loop --><li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{BREADCRUMBS.link}" itemprop="item" title="{BREADCRUMBS.title}"><span class="txt" itemprop="name">{BREADCRUMBS.title}</span></a><i class="hidden" itemprop="position" content="{BREADCRUMBS.position}"></i></li><!-- END: loop -->
                                </ul>
                            </div>
                            <!-- END: breadcrumbs -->
                            <!-- BEGIN: currenttime --><span class="current-time">{NV_CURRENTTIME}</span><!-- END: currenttime -->
                        </div>
                        <div class="headerSearch col-xs-24 col-sm-6 col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..."><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span>
                            </div>
                        </div>
                    </div>
                </nav>
                [THEME_ERROR_INFO]
