<!DOCTYPE html>
<html>
<head>
    {asset name="Head"}
</head>
<body id="{$BodyID}" class="{$BodyClass} hide-sidedrawer">

<main id="Frame">
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
                <div id="Search" class="mui--pull-right">
                    {searchbox}
                </div>
            </div>
        </div>
    </header>

    <section id="Body">
        <div class="mui-container">
            <div class="mui-row">
                <div id="Content" class=" mui-col-xs-12 mui-col-lg-9">{asset name="Content"}</div>
                <div id="Panel" class="mui-panel mui-col-xs-12 mui-col-lg-3">
                    {module name="MeModule"}
                    {asset name="Panel"}
                </div>
            </div>
        </div>
    </section>

</main>
<footer class="mui--text-center">
    <a class="PoweredByVanilla" href="{vanillaurl}">Powered by Vanilla</a>
    {asset name="Foot"}
</footer>
{event name="AfterBody"}

{literal}
    <script>
        // Theme Sidedraw (3rd Party)
        // Third Party Sidedraw
        jQuery(function ($) {
            var $bodyEl = $('body'),
                    $sidedrawerEl = $('#sidedrawer');

            function showSidedrawer() {
                // show overlay
                var options = {
                    onclose: function () {
                        $sidedrawerEl
                                .removeClass('active')
                                .appendTo(document.body);
                    }
                };

                var $overlayEl = $(mui.overlay('on', options));

                // show element
                $sidedrawerEl.appendTo($overlayEl);
                setTimeout(function () {
                    $sidedrawerEl.addClass('active');
                }, 20);

            }


            function hideSidedrawer() {
                $bodyEl.toggleClass('hide-sidedrawer');

            }

            $('.js-show-sidedrawer').on('click', showSidedrawer);
            $('.js-hide-sidedrawer').on('click', hideSidedrawer);

        });
    </script>
{/literal}
</body>
</html>
