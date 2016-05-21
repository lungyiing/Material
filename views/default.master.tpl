<!DOCTYPE html>
<html>
<head>
    {asset name="Head"}
    <script src="//cdn.muicss.com/mui-0.5.9/js/mui.min.js"></script>
</head>
<body id="{$BodyID}" class="{$BodyClass} hide-sidedrawer">
<div id="Frame">
    <div id="sidedrawer" class="mui--no-user-select">
        <div id="sidedrawer-brand" class="mui--appbar-line-height"><span class="mui--text-title">{logo}</span></div>
        <div class="mui-divider"></div>
        <ul id="sidenav">
            {dashboard_link}
            {discussions_link}
            {activity_link}
            {inbox_link}
            {custom_menu}
            {profile_link}
            {signinout_link}
        </ul>
    </div>
    <header id="header">
        <div class="mui-appbar mui--appbar-line-height">
            <div class="mui-container-fluid">
                <a class="sidedrawer-toggle mui--visible-xs-inline-block js-show-sidedrawer">☰</a>
                <a class="sidedrawer-toggle mui--hidden-xs js-hide-sidedrawer">☰</a>
                <span class="mui--text-title">{breadcrumbs}</span>
            </div>
        </div>
    </header>

    <main id="Body">
        <div class="mui-container">
            <div class="mui-row">
                <div id="Content" class=" mui-col-xs-12 mui-col-lg-9">{asset name="Content"}</div>
                <div id="Panel" class="mui-panel mui-col-xs-12 mui-col-lg-3">
                    {module name="MeModule"}
                    {asset name="Panel"}
                </div>
            </div>
        </div>

        <footer>
            <a class="mui--text-center mui--text-black" href="{vanillaurl}">Powered by Vanilla</a>
            {asset name="Foot"}
        </footer>
    </main>

</div>
{event name="AfterBody"}
</body>
</html>
