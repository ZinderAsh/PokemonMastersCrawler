<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/  dc: http://purl.org/dc/terms/  foaf: http://xmlns.com/foaf/0.1/  og: http://ogp.me/ns#  rdfs: http://www.w3.org/2000/01/rdf-schema#  schema: http://schema.org/  sioc: http://rdfs.org/sioc/ns#  sioct: http://rdfs.org/sioc/types#  skos: http://www.w3.org/2004/02/skos/core#  xsd: http://www.w3.org/2001/XMLSchema# ">
<head>
<meta charset="utf-8" /><script type="84a890713d5daea6efec3db8-text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"48befe3114",applicationID:"56773492"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
<script type="84a890713d5daea6efec3db8-text/javascript">(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,"script","https://www.google-analytics.com/analytics.js","ga");ga("create", "UA-78046902-1", {"cookieDomain":"auto"});ga("set", "anonymizeIp", true);ga("set", "dimension2", "GamePress");ga("set", "dimension5", "1");ga("send", "pageview");</script>
<script type="84a890713d5daea6efec3db8-text/javascript">(function(h,o,t,j,a,r){
  h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
  h._hjSettings={hjid:"1482127",hjsv:6};
  a=o.getElementsByTagName('head')[0];
  r=o.createElement('script');r.async=1;
  r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
  a.appendChild(r);
})(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');</script>
<meta name="title" content="GamePress" />
<link rel="shortlink" href="https://gamepress.gg/" />
<link rel="canonical" href="https://gamepress.gg/" />
<meta name="twitter:card" content="summary_large_image" />
<meta property="og:site_name" content="GamePress - Databases, Guides, and News for your Favorite Games" />
<meta name="twitter:site" content="@gamepressgg" />
<meta name="description" content="Welcome to GamePress! Databases, guides, and news for your favorite games." />
<meta property="og:url" content="https://gamepress.gg/home" />
<meta name="abstract" content="Welcome to GamePress! Databases, guides, and news for your favorite games." />
<meta property="og:description" content="Welcome to GamePress! Databases, guides, and news for your favorite games." />
<meta name="twitter:image" content="https://gamepress.gg, https://gamepress.gg/gamepress.jpg" />
<meta property="og:image" content="https://gamepress.gg/gamepress.jpg" />
<meta name="Generator" content="Drupal 8 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/sites/default/files/Logo_1.png" type="image/png" />
<title>GamePress</title>
<link rel="stylesheet" media="all" href="/sites/default/files/css/css_t1g95UpGtG56sjo_7r_Ze1p6SZHoa4Jg5RxN_4VA2wk.css" />
<link rel="stylesheet" media="all" href="/sites/default/files/css/css_BRkbEc9_ARo53GMYYqIvdl8SAW-PzxrD8N9tv_HXb9I.css" />
<!--[if lte IE 8]>
<script src="/sites/default/files/js/js_VtafjXmRvoUgAzqzYTA3Wrjkx9wcWhjP0G4ZnnqRamA.js"></script>
<![endif]-->
<script src="/sites/default/files/js/js_IfqzHiUTwZH2H0gSZOmiplXoH34uGUxDaNEYeime-xM.js" type="84a890713d5daea6efec3db8-text/javascript"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i" rel="stylesheet">
<script type="84a890713d5daea6efec3db8-text/javascript" src="https://s.skimresources.com/js/143426X1608036.skimlinks.js"></script>
<script src="https://comment.gamepress.gg/js/count.js" type="84a890713d5daea6efec3db8-text/javascript"></script>
</head>
<body class="no-sidebars site-gamepress frontpage">
<div id="top-page"></div>
<div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
<script type="84a890713d5daea6efec3db8-text/javascript">
  (function () {
  window.aax = window.aax || {}; window.aax.initTime = new Date().getTime(); window.aax.deliverExchangeDemand = function () { };
  window.aax.pubId = 'AAXDDFXYK';
  window.aax.ver = 1.2;
  window.aax.hst = window.location.hostname;
  var aaxEndpoint = '//c.aaxads.com/aax.js?pub=' + window.aax.pubId + '&hst=' + window.aax.hst + '&ver=' + window.aax.ver;
  function isSSL() {
  return ('https:' == document.location.protocol);
  }
  function getProtocol() {
  return isSSL() ? 'https:' : 'http:'
  }
  function writeSource(endpoint) {
  var source = getProtocol() + endpoint;
  document.write('<scr' + 'ipt type="text/javascript" src="' + source + '"></scr' + 'ipt>');
  }
  writeSource(aaxEndpoint);
  })();
  </script>
<script type="84a890713d5daea6efec3db8-text/javascript">
/* A9 Load Lib */
!function(a9,a,p,s,t,A,g){if(a[a9])return;function q(c,r){a[a9]._Q.push([c,r])}a[a9]={init:function(){q("i",arguments)},fetchBids:function()
{q("f",arguments)},setDisplayBids:function(){},_Q:[]};A=p.createElement(s);A.async=!0;A.src=t;g=p.getElementsByTagName(s)[0];g.parentNode.insertBefore(
A,g)}("apstag",window,document,"script","//c.amazon-adsystem.com/aax2/apstag.js");
</script>

<script type="84a890713d5daea6efec3db8-text/javascript">
    var adsStart = (new Date()).getTime();
    function detectWidth() {
        return window.screen.width || window.innerWidth || window.document.documentElement.clientWidth || Math.min(window.innerWidth, window.document.documentElement.clientWidth) || window.innerWidth || window.document.documentElement.clientWidth || window.document.getElementsByTagName('body')[0].clientWidth;
    }

    var TIMEOUT = 2000;

    /* A9 Init */  
    apstag.init({
        pubID: 'edf9e12e-6c41-40a2-bcc3-2f7942aec18a',
        adServer: 'googletag'
    });

    var googletag = googletag || {};
    googletag.cmd = googletag.cmd || [];
    var pbjs = pbjs || {};
    pbjs.que = pbjs.que || [];
    var adUnits = adUnits || [];
    /* A9 Vars */
    var a9Slots = [];
    var a9BidsBack = false; 

    function initAdServer() {
        if (pbjs.initAdserverSet) return;
        (function() {
            var gads = document.createElement('script');
            gads.async = true;
            gads.type = 'text/javascript';
            var useSSL = 'https:' == document.location.protocol;
            gads.src = (useSSL ? 'https:' : 'http:') +
                '//www.googletagservices.com/tag/js/gpt.js';
            var node = document.getElementsByTagName('script')[0];
            node.parentNode.insertBefore(gads, node);
        })();
        pbjs.initAdserverSet = true;
    };
    pbjs.timeout = setTimeout(initAdServer, TIMEOUT);
    pbjs.timeStart = adsStart;

    var dfpNetwork = '31904509';

    // START: Defining Adunits
    if(detectWidth() > 980)
    {
        // Desktop Adunits
        adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Desktop_728x90_Extra_1',
                size: [[728, 90]],
                code: 'div-ad-Gamepress_Desktop_728x90_Extra_1',
                assignToVariableName: false // false if not in use
            });  
        adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Desktop_728x90_Extra_2',
                size: [[728, 90]],
                code: 'div-ad-Gamepress_Desktop_728x90_Extra_2',
                assignToVariableName: false // false if not in use
            });
                adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Desktop_728x90_BTF',
                size: [[728, 90]],
                code: 'div-ad-Gamepress_Desktop_728x90_BTF',
                assignToVariableName: false // false if not in use
            }); 
                adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Desktop_RR_300x250_A',
                size: [[300, 250],[300, 600]],
                code: 'div-ad-Gamepress_Desktop_RR_300x250_A',
                assignToVariableName: false // false if not in use
            });  
    } else {
        // Mobile Adunits
        adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Mobile_320x50_Floating',
                size: [[320, 50]],
                code: 'div-ad-Gamepress_Mobile_320x50_Floating',
                assignToVariableName: false // false if not in use
            });  
                adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Mobile_300x250_BTF_1',
                size: [[300, 250]],
                code: 'div-ad-Gamepress_Mobile_300x250_BTF_1',
                assignToVariableName: false // false if not in use
            });   // Mobile 3
                adUnits.push({
                network: dfpNetwork,
                adunit: 'Gamepress_Mobile_300x250_BTF_2',
                size: [[300, 250]],
                code: 'div-ad-Gamepress_Mobile_300x250_BTF_2',
                assignToVariableName: false // false if not in use
            });  // Mobile 4                                                                      
    }
    // END: Defining Adunits

    googletag.cmd.push(function() {
      if(adUnits){
        var dfpSlots = [];
        for (var i = 0, len = adUnits.length; i < len; i++) {
          dfpSlots[i] = googletag.defineSlot('/'+adUnits[i].network+'/'+adUnits[i].adunit, adUnits[i].size, adUnits[i].code).addService(googletag.pubads());
          if(adUnits[i].assignToVariableName && (adUnits[i].assignToVariableName !== null)) window[adUnits[i].assignToVariableName] = dfpSlots[i];
        }
      }
    });

    /* A9 Slots */
    if(adUnits){
        if(apstag){
          for (var i = 0, len = adUnits.length; i < len; i++) {
                  a9Slots.push({slotID: adUnits[i].code,slotName: adUnits[i].network+'/'+adUnits[i].adunit,sizes: adUnits[i].size});
              }
        }
    }    
    /* A9 Request Bids */
    apstag.fetchBids({
                        slots: a9Slots,
                        timeout: TIMEOUT
                    }, 
                    function(bids) {
                        console.log('BDS back',(new Date()).getTime()-adsStart,bids);
                        a9BidsBack = true;
                    }); 

    googletag.cmd.push(function() {
        /* A9 Set Bids */
        if(a9BidsBack) apstag.setDisplayBids();
        // Header Bidding Targeting
        pbjs.que.push(function() {pbjs.setTargetingForGPTAsync();});

        // Init DFP
        googletag.pubads().enableSingleRequest();
        googletag.pubads().collapseEmptyDivs();
        googletag.enableServices();
    });
</script>
<script type="84a890713d5daea6efec3db8-text/javascript" async="true" src="https://gamepress.gg/prebid/prebidglobal.js?2020-09-18T11:59:34"></script>
<div class="gamepress-boost-top-banner" style="display:none;">
<a href="https://gamepress.gg/boost" class="boost-text">Consider Supporting us with GamePress Boost!<span class="read-more-boost">Read more</span></a>
<i class="fa fa-times boost-close-icon" onclick="if (!window.__cfRLUnblockHandlers) return false; hideBoost()" data-cf-modified-84a890713d5daea6efec3db8-=""></i>
</div>
<script type="84a890713d5daea6efec3db8-text/javascript">

$(document).ready(function(){
	showBoost();
})

function hideBoost(element){
	$(".gamepress-boost-top-banner").hide();
	createCookie("gamepress_hide_boost", true, 365);
}

function showBoost(){
	var show = getCookie("gamepress_hide_boost");
	if(!show){
		$(".gamepress-boost-top-banner").show();
	}
}

function createCookie(name, value, days) {
    var expires;
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    }
    else {
        expires = "";
    }
    document.cookie = name + "=" + value + expires + "; path=/";
}

// from w3schools
function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

</script>
<div class="gamepress-top-branding">
<div class="outer-wrapper feed-parent">
<a class="gamepresslink" href="http://Gamepress.gg"><img src="/GamePressNewLogo.png"></a>
<div class="gamepress-sub-menu">
<div class="outer-wrapper">
<ul>
<li><a class="boost-menu-link" href="https://gamepress.gg/boost">Boost</a></li>
<li><a href="https://community.gamepress.gg">Community</a></li>
<li><a href="https://discord.gg/yq8D9GX">Discord</a></li>
<li><a href="https://gamepress.gg/all-games">All Games</a></li>
</ul>
</div>
</div>
<div class="portal-section">
<div class="not-loggedin">
<ul>
<li><a href="/user/login">Sign In</a></li>
<li class="register-button"><a href="https://gamepress.gg/user/register">Register</a></li>
</ul>
</div>
</div>
<script type="84a890713d5daea6efec3db8-text/javascript">
  var baseURL = "https://default.dd:8443";

  function enableDM() {
    var newNode = {
      _links: {
          type: {
              href: baseURL + '/rest/type/user/user'
          }
      },
      field_dark_mode: {
          value: 1
      }
    };
    getCsrfToken(function(csrfToken) {
        patchNode(csrfToken, newNode);
    });
  }

  function getCsrfToken(callback) {
    jQuery
      .get(Drupal.url('session/token'))
      .done(function (data) {
        var csrfToken = data;
        callback(csrfToken);
      });
  }

  function patchNode(csrfToken, node) {
  var urlJSON = baseURL + '/user/' + '0' + '?_format=hal_json'
  jQuery.ajax({
    url: urlJSON,
    method: 'PATCH',
    headers: {
      'Content-Type': 'application/hal+json',
      'X-CSRF-Token': csrfToken
    },
    data: JSON.stringify(node),
    success: function (node) {
      window.location.href = baseURL;
    },
  });
}


</script> </div>
</div>
<div id="bottom-sticky-ad">

<div id='div-ad-Gamepress_Mobile_320x50_Floating'>
<script type="84a890713d5daea6efec3db8-text/javascript">
if(detectWidth() <= 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Mobile_320x50_Floating'); }); }
</script>
</div>
</div>
<div class="feed-main-body outer-wrapper">
<div class="feed-container">
<div class="">
<div data-drupal-messages-fallback class="hidden"></div>
<div id="block-gamepressbase-content" class="block block-system block-system-main-block">
<div class="views-element-container"><div class="view view-feed view-id-feed view-display-id-page_2 js-view-dom-id-f06924b80ba5ea3564807f6a74760f8aecf7405b68b689415e40c94b338da6ce">
<div class="view-header">
<div class="view view-feed-sidebar view-id-feed_sidebar view-display-id-block_2 js-view-dom-id-3109b01743ee2a6f26db47876a08630d20d25e6a1dc88253cce1a4e4681003b7">
<div class="view-content">
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/pokemongo"> <img src="/sites/default/files/styles/thumbnail/public/2017-06/pokemongoicon.png?itok=meb1xOHE" width="100" height="100" alt="Pokemon GO" title="Pokemon GO" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/grandorder"> <img src="/sites/default/files/styles/thumbnail/public/2019-06/fgo-icon_0.jpg?itok=IiHB7pSt" width="100" height="100" alt="Fate/Grand Order" title="Fate/Grand Order" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/arknights"> <img src="/sites/default/files/styles/thumbnail/public/2019-06/Arkgnits-main.jpg?itok=O_TVJAjF" width="100" height="100" alt="Arknights" title="Arknights" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/feheroes"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/feh.jpg?itok=caQxjHVG" width="100" height="100" alt="Fire Emblem Heroes" title="Fire Emblem Heroes" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/pokemonmasters"> <img src="/sites/default/files/styles/thumbnail/public/2019-07/pokemon-masters-icon_0.jpg?itok=nh3hVaTJ" width="100" height="100" alt="Pokemon Masters" title="Pokemon Masters" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/dblegends"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/dblegends.jpg?itok=hEdxP-P5" width="100" height="100" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/dragalialost"> <img src="/sites/default/files/styles/thumbnail/public/2018-09/dragalialost-icon.png?itok=MAJHdAwz" width="100" height="100" alt="Dragalia Lost" title="Dragalia Lost" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/girlsfrontline"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/gf-icon.png?itok=eAiq3STt" width="100" height="100" alt="Girls Frontline" title="Girls Frontline" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/epicseven"> <img src="/sites/default/files/styles/thumbnail/public/2019-04/angelicasquare.png?itok=xaBxCHrc" width="100" height="100" alt="Epic Seven" title="Epic Seven" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/legends-runeterra"> <img src="/sites/default/files/styles/thumbnail/public/2020-06/DBLIconTemplate_9%5B1%5D.png?itok=N3LBVOfU" width="100" height="100" alt="elusive poro" title="Legends of Runeterra" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/jurassicworldalive"> <img src="/sites/default/files/styles/thumbnail/public/2019-10/jwa_0.jpg?itok=DKixntjA" width="100" height="100" alt="Jurassic World Alive" title="Jurassic World Alive" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/teppen"> <img src="/sites/default/files/styles/thumbnail/public/2019-07/teppen-icon.jpg?itok=VFbnI2TN" width="100" height="100" alt="TEPPEN" title="TEPPEN" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/genshin-impact"> <img src="/sites/default/files/styles/thumbnail/public/2020-10/emergency.jpeg?itok=keW4yMqY" width="100" height="100" alt="Genshin Impact" title="Genshin Impact" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
</div>
</div>
</div>
<div class="view-content">
<div data-drupal-views-infinite-scroll-content-wrapper class="views-infinite-scroll-content-wrapper clearfix"> <div class="views-row" style="border-left:2px solid #4296C2"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-09/dragalialost-icon.png?itok=KOMJwF0t" width="30" height="30" alt="Dragalia Lost" title="Dragalia Lost" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragalia Lost</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51506" hreflang="en">Content Update: 11/23/2020 - Princess Connect Re:Dive Event Teaser Images</a></div>
<div class="feed-item-date"><span class="post-created-date">1 minute ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dragalialost/content-update-11232020-princess-connect-redive-event-teaser-images#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51506" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/Event_Jikai_Preview_01.png?itok=sfvz4Rv0" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #EE6C00"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/dblegends.jpg?itok=BfEO_XfK" width="30" height="30" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragon Ball Legends</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51501" hreflang="en">Team Tier List</a></div>
<div class="feed-item-date"><span class="post-created-date">13 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dblegends/team-tier-list#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51501" hreflang="en"><img src="/sites/default/files/styles/600x315/public/TEAMTIERLIST_11.jpg?itok=kRuB3dQh" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #EE6C00"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/dblegends.jpg?itok=BfEO_XfK" width="30" height="30" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragon Ball Legends</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51496" hreflang="en">Top Regeneration Team</a></div>
<div class="feed-item-date"><span class="post-created-date">13 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dblegends/top-regeneration-team#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51496" hreflang="en"><img src="/sites/default/files/styles/600x315/public/topregenerationteam.jpg?itok=AwsQwYn2" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #EE6C00"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/dblegends.jpg?itok=BfEO_XfK" width="30" height="30" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragon Ball Legends</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51491" hreflang="en">Top God Ki Team</a></div>
<div class="feed-item-date"><span class="post-created-date">14 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dblegends/top-god-ki-team#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51491" hreflang="en"><img src="/sites/default/files/styles/600x315/public/godkiteam.jpg?itok=ZGQDwOvL" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #EE6C00"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/dblegends.jpg?itok=BfEO_XfK" width="30" height="30" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragon Ball Legends</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51486" hreflang="en">Top Hybrid Saiyan Team</a></div>
<div class="feed-item-date"><span class="post-created-date">15 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dblegends/top-hybrid-saiyan-team#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51486" hreflang="en"><img src="/sites/default/files/styles/600x315/public/tophybridsaiyans_0.jpg?itok=kFubaRQ7" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #EE6C00"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/dblegends.jpg?itok=BfEO_XfK" width="30" height="30" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Dragon Ball Legends</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51481" hreflang="en">Meta Shift: Broly &amp; Goku</a></div>
<div class="feed-item-date"><span class="post-created-date">15 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/dblegends/meta-shift-broly-goku#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51481" hreflang="en"><img src="/sites/default/files/styles/600x315/public/bluegokumetashift.jpg?itok=qCOEtdqh" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="feed-ad">

<div id='div-ad-Gamepress_Desktop_728x90_Extra_1'>
<script type="84a890713d5daea6efec3db8-text/javascript">
				if(detectWidth() > 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Desktop_728x90_Extra_1'); }); }
				</script>
</div>

<div id='div-ad-Gamepress_Mobile_300x250_BTF_1'>
<script type="84a890713d5daea6efec3db8-text/javascript">
				if(detectWidth() <= 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Mobile_300x250_BTF_1'); }); }
				</script>
</div>
</div>
<div class="views-row" style="border-left:2px solid #1D3D60"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/Arkgnits-main.jpg?itok=FvngSI1A" width="30" height="30" alt="Arknights" title="Arknights" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Arknights</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51476" hreflang="en">Arknights CN: CC#3 - Permanent Stage - [UPDATE] - Week 2 Contracts Added!</a></div>
<div class="feed-item-date"><span class="post-created-date">16 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/arknights/event-banner-guide-subpage-miscellaneous/contingency-contract-season-3-operation-cinder-permanent#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51476" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/CCSeason%233EventPagePermanentStage-2.png?itok=nzouIy6J" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #1D3D60"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/Arkgnits-main.jpg?itok=FvngSI1A" width="30" height="30" alt="Arknights" title="Arknights" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Arknights</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51471" hreflang="en">Arknights: [Grani Rerun] - Event Store - [UPDATE] - Sanity Efficiencies Added!</a></div>
<div class="feed-item-date"><span class="post-created-date">19 hours ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/arknights/event-banner-guide-subpage-miscellaneous/grani-and-knights-treasure-retrospection-event-store#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51471" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/GraniRerunEventStore-2.png?itok=EWIZ7QN-" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #1D3D60"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/Arkgnits-main.jpg?itok=FvngSI1A" width="30" height="30" alt="Arknights" title="Arknights" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Arknights</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51466" hreflang="en">Arknights: [Grani Rerun] - Farming Guide - [UPDATE] - Stage Drop Efficiencies Added!</a></div>
<div class="feed-item-date"><span class="post-created-date">1 day ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/arknights/event-banner-guide-subpage-miscellaneous/grani-and-knights-treasure-retrospection-event-operations#topic-1047331#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51466" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/GraniRerunEventOperationsAndFarmingGuide-2.png?itok=BhbzzC6n" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #8E93F2"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/fgo-icon_0.jpg?itok=DYd4rUW_" width="30" height="30" alt="Fate/Grand Order" title="Fate/Grand Order" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Fate/Grand Order</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51461" hreflang="en">Summon Simulator Updated: Thanksgiving 2020 Pickup Summon (Daily) added!</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/grandorder/summon-simulator#156#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51461" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/20201119%20Thanksgiving%202020%20Pickup%20Daily%20Res.png?itok=Xk_50eb8" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #8E93F2"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/fgo-icon_0.jpg?itok=DYd4rUW_" width="30" height="30" alt="Fate/Grand Order" title="Fate/Grand Order" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Fate/Grand Order</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51456" hreflang="en">The FGO Thanksgiving Special 2020 information available!</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/grandorder/fgo-thanksgiving-special-2020#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51456" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/20201119%20Thanksgiving%20Special%202020%20Banner%20Res.png?itok=lg-OFqVL" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #42000A"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-10/jwa_0.jpg?itok=1G8iZ6V9" width="30" height="30" alt="Jurassic World Alive" title="Jurassic World Alive" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Jurassic World Alive</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51451" hreflang="en">Epic No Hybrid Skill Tourament 11.20.2020: Sim Results and Team Building Tips!</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/jurassicworldalive/guide/epic-no-hybrid-skill-tourament-11202020-sim-results-and-team-building-tips#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51451" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/Epic%20OG%2011.20.2020.png?itok=kXz7WuWR" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #BD9529"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left  full-width-feed   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/feh.jpg?itok=HuTE01y2" width="30" height="30" alt="Fire Emblem Heroes" title="Fire Emblem Heroes" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Fire Emblem Heroes</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51446" hreflang="en">Melady Analysis Added</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/feheroes/hero/melady#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
</div>
</article>
</div></div>
<div class="feed-ad">

<div id='div-ad-Gamepress_Desktop_728x90_Extra_2'>
<script type="84a890713d5daea6efec3db8-text/javascript">
				if(detectWidth() > 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Desktop_728x90_Extra_2'); }); }
				</script>
</div>

<div id='div-ad-Gamepress_Mobile_300x250_BTF_2'>
<script type="84a890713d5daea6efec3db8-text/javascript">
				if(detectWidth() <= 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Mobile_300x250_BTF_2'); }); }
				</script>
</div>
</div>
<div class="views-row" style="border-left:2px solid #1D3D60"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/Arkgnits-main.jpg?itok=FvngSI1A" width="30" height="30" alt="Arknights" title="Arknights" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Arknights</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51441" hreflang="en">Arknights: Free Headhunt Permit With Survey Submission!</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/arknights/news/arknights-free-headhunt-permit-survey-submission#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51441" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/AKsurvey.png?itok=ts_T_8nO" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #1D3D60"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2019-06/Arkgnits-main.jpg?itok=FvngSI1A" width="30" height="30" alt="Arknights" title="Arknights" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Arknights</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51436" hreflang="en">Aknights: Grani Event Rerun Announced!</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/arknights/news/aknights-grani-event-rerun-announced#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51436" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/GraniRerunEvent-2.jpeg?h=ead380e7&amp;itok=5iOlRAL9" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #347CD1"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2017-06/pokemongoicon.png?itok=IHWbuje7" width="30" height="30" alt="Pokemon GO" title="Pokemon GO" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Pokemon GO</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51431" hreflang="en">GO Beyond: The Cost of Newfound Power in Pokemon Go</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/pokemongo/go-beyond-cost-newfound-power#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51431" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/GoBeyond.png?itok=VQBKDZrI" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #347CD1"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2017-06/pokemongoicon.png?itok=IHWbuje7" width="30" height="30" alt="Pokemon GO" title="Pokemon GO" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Pokemon GO</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51426" hreflang="en">Community Day November 2020 Guide: Magmar</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/pokemongo/community-day-november-2020-guide-magmar#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51426" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/DualCD.png?itok=v-2qKrVl" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #347CD1"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2017-06/pokemongoicon.png?itok=IHWbuje7" width="30" height="30" alt="Pokemon GO" title="Pokemon GO" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Pokemon GO</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51421" hreflang="en">Covid-19 Related Bonuses Return to Pokemon Go</a></div>
<div class="feed-item-date"><span class="post-created-date">2 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/pokemongo/covid-related-bonuses-return-pokemon-go#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51421" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/update-20200929.jpg?itok=J4p0GzZa" width="600" height="315" alt="" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #E0A70B"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2018-06/gf-icon.png?itok=oKzabsKP" width="30" height="30" alt="Girls Frontline" title="Girls Frontline" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Girls Frontline</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/node/51411" hreflang="en">Project Neural Cloud Character Profile: Gin</a></div>
<div class="feed-item-date"><span class="post-created-date">3 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="https://gamepress.gg/girlsfrontline/project-neural-cloud-pre-release-background-lore#topic-106916#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/node/51411" hreflang="en"><img src="/sites/default/files/styles/600x315/public/gin%20profile.jpg?itok=i0O5plFP" width="600" height="315" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
<div class="views-row" style="border-left:2px solid #000000"><div class="feed-item-container">
<article class="feed-item-sub-container">
<div class="feed-item-left   ">
<div class="feed-item-category-image"><div class="game-home-feed-container">
<div class="game-home-feed-image"> <img src="/sites/default/files/styles/30x30/public/2020-10/emergency.jpeg?itok=RlSmfqmb" width="30" height="30" alt="Genshin Impact" title="Genshin Impact" typeof="Image" class="image-style-_0x30" />
</div>
<div class="game-home-feed-title">
<div class="field field--name-name field--type-string field--label-hidden field__item">Genshin Impact</div>
</div>
</div></div>
<div class="feed-item-title"><a href="/genshin-impact-childe-analysis" hreflang="en">Genshin Impact: Childe Analysis</a></div>
<div class="feed-item-date"><span class="post-created-date">3 days ago</span><i class="fa fa-circle" aria-hidden="true"></i><a class="comment-feed-count" href="/genshin-impact-childe-analysis
#commento"></a> <i class="fa fa-comments" aria-hidden="true"></i></div>
</div>
<div class="feed-item-right">
<a href="/genshin-impact-childe-analysis" hreflang="en"><img src="/sites/default/files/styles/600x315/public/2020-11/Genshin-Impact-_-screenshot-1.png?h=ddfcf452&amp;itok=B_xnzBIO" width="600" height="315" alt="Genshin Impact: Childe Analysis" typeof="Image" class="image-style-_00x315" />
</a>
</div>
</article>
</div></div>
</div>
</div>
<ul class="js-pager__items pager" data-drupal-views-infinite-scroll-pager>
<li class="pager__item">
<a class="button" href="/home?page=1" title="Go to next page" rel="next">Load More</a>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="feed-right">
<div class="views-element-container"><div class="view view-feed-sidebar view-id-feed_sidebar view-display-id-block_1 js-view-dom-id-2ca5693a47a4272a428b4cf2b1d6dd2fa8257d562450201d6de3fcecc27c965e">
<div class="view-header">
<i class="fa fa-filter" aria-hidden="true"></i> Filter By Game
</div>
<div class="view-content">
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/pokemongo"> <img src="/sites/default/files/styles/thumbnail/public/2017-06/pokemongoicon.png?itok=meb1xOHE" width="100" height="100" alt="Pokemon GO" title="Pokemon GO" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/grandorder"> <img src="/sites/default/files/styles/thumbnail/public/2019-06/fgo-icon_0.jpg?itok=IiHB7pSt" width="100" height="100" alt="Fate/Grand Order" title="Fate/Grand Order" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/arknights"> <img src="/sites/default/files/styles/thumbnail/public/2019-06/Arkgnits-main.jpg?itok=O_TVJAjF" width="100" height="100" alt="Arknights" title="Arknights" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/feheroes"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/feh.jpg?itok=caQxjHVG" width="100" height="100" alt="Fire Emblem Heroes" title="Fire Emblem Heroes" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/pokemonmasters"> <img src="/sites/default/files/styles/thumbnail/public/2019-07/pokemon-masters-icon_0.jpg?itok=nh3hVaTJ" width="100" height="100" alt="Pokemon Masters" title="Pokemon Masters" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/dblegends"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/dblegends.jpg?itok=hEdxP-P5" width="100" height="100" alt="Dragon Ball Legends" title="Dragon Ball Legends" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
 <div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/dragalialost"> <img src="/sites/default/files/styles/thumbnail/public/2018-09/dragalialost-icon.png?itok=MAJHdAwz" width="100" height="100" alt="Dragalia Lost" title="Dragalia Lost" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/girlsfrontline"> <img src="/sites/default/files/styles/thumbnail/public/2018-06/gf-icon.png?itok=eAiq3STt" width="100" height="100" alt="Girls Frontline" title="Girls Frontline" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/epicseven"> <img src="/sites/default/files/styles/thumbnail/public/2019-04/angelicasquare.png?itok=xaBxCHrc" width="100" height="100" alt="Epic Seven" title="Epic Seven" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/legends-runeterra"> <img src="/sites/default/files/styles/thumbnail/public/2020-06/DBLIconTemplate_9%5B1%5D.png?itok=N3LBVOfU" width="100" height="100" alt="elusive poro" title="Legends of Runeterra" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="https://gamepress.gg/jurassicworldalive"> <img src="/sites/default/files/styles/thumbnail/public/2019-10/jwa_0.jpg?itok=DKixntjA" width="100" height="100" alt="Jurassic World Alive" title="Jurassic World Alive" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/teppen"> <img src="/sites/default/files/styles/thumbnail/public/2019-07/teppen-icon.jpg?itok=VFbnI2TN" width="100" height="100" alt="TEPPEN" title="TEPPEN" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
<div class="views-row"><div class="views-field views-field-field-link-to-site"><div class="field-content"><a href="/c/genshin-impact"> <img src="/sites/default/files/styles/thumbnail/public/2020-10/emergency.jpeg?itok=keW4yMqY" width="100" height="100" alt="Genshin Impact" title="Genshin Impact" typeof="Image" class="image-style-thumbnail" />
</a></div></div></div>
</div>
<div class="view-footer">
<a class="featured-button" href="/all-games">See All</a>
</div>
</div>
</div>
<div class="feed-ad-right-sidebar">
<div style="margin-bottom:10px;" id='div-ad-Gamepress_Desktop_RR_300x250_A'>
<script type="84a890713d5daea6efec3db8-text/javascript">
if(detectWidth() > 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Desktop_RR_300x250_A'); }); }
</script>
</div></div>
<div class="sidebar-footer">
<p><b>GamePress</b></p>
<ul class="sidebar-footer-menu-top">
<li><a href="https://gamepress.gg/aboutus">About Us</a></li>
<li><a href="https://gamepress.gg/boost">Boost</a></li>
<li><a href="https://community.gamepress.gg">Community</a></li>
<li><a href="https://discordapp.com/invite/QXMcxkC">Discord</a></li>
<li><a href="https://gamepress.gg/all-games">All Games</a></li>
<li><a href="https://gamepress.us3.list-manage.com/subscribe?u=9f1343c259a097bdc976ae488&id=eb29e6cef7">Newsletter</a></li>
</ul>
<ul class="sidebar-footer-menu-bottom">
<li><a href="https://gamepress.gg/disclaimer" target="_blank">Disclaimer</a></li>
<li><a href="https://gamepress.gg/privacy-policy" target="_blank">Privacy Policy</a></li>
<li><a href="https://gamepress.gg/terms-of-use" target="_blank">Terms of Use</a></li>
</ul>
<small>Copyright (C) GamePress All Rights Reserved.</small>
</div>
</div>
</div>
<footer id="site-footer">
<div class="outer-wrapper">
<section class="footer-top">

<div id='div-ad-Gamepress_Desktop_728x90_BTF'>
<script type="84a890713d5daea6efec3db8-text/javascript">
if(detectWidth() > 980) { googletag.cmd.push(function() { googletag.display('div-ad-Gamepress_Desktop_728x90_BTF'); }); }
</script>
</div>
</section>
<section class="footer-bottom">
<a class="footer-logo" href="https://gamepress.gg" target="_blank"><img src="https://gamepress.gg/GamePressNewLogo.png"></a>
<div class="footer-links">
<ul>
<li><a href="https://gamepress.gg/disclaimer" target="_blank">Disclaimer</a></li>
<li><a href="https://gamepress.gg/privacy-policy" target="_blank">Privacy Policy</a></li>
<li><a href="https://gamepress.gg/terms-of-use" target="_blank">Terms of Use</a></li>
<li><a href="/cdn-cgi/l/email-protection#81e2eeeff5e0e2f5c1e6e0ece4f1f3e4f2f2afe6e6" target="_blank">Contact Us</a></li>
</ul>
</div>
<div class="footer-dots">
<i class="fa fa-circle" aria-hidden="true"></i>
<i class="fa fa-circle" aria-hidden="true"></i>
<i class="fa fa-circle" aria-hidden="true"></i>
</div>
<div class="footer-copyright">
<p>Copyright (C) GamePress All Rights Reserved.</p>
</div>
<div class="footer-copyright">
<p></p>
</div>
</section>
</div>
</footer>
</div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"home","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"ajaxPageState":{"libraries":"ajax_loader\/ajax_loader.throbber,classy\/base,classy\/messages,core\/html5shiv,core\/normalize,extra_field_description\/extra_field_description_css,gamepressbase\/global-scripts,gamepressbase\/global-styling,google_analytics\/google_analytics,main\/global-scripts,main\/global-styling,main\/js-header,poll\/drupal.poll-links,system\/base,views\/views.module,views_infinite_scroll\/views-infinite-scroll","theme":"gamepressbase","theme_token":null},"ajaxTrustedUrl":[],"ajaxLoader":{"markup":"\u003Cdiv class=\u0022ajax-throbber wally-loader\u0022\u003E\u003Cimg src=\u0022\/wally.png\u0022\u003E\u003C\/div\u003E","hideAjaxMessage":false,"alwaysFullscreen":false,"throbberPosition":"body"},"google_analytics":{"trackOutbound":true,"trackMailto":true,"trackDownload":true,"trackDownloadExtensions":"7z|aac|arc|arj|asf|asx|avi|bin|csv|doc(x|m)?|dot(x|m)?|exe|flv|gif|gz|gzip|hqx|jar|jpe?g|js|mp(2|3|4|e?g)|mov(ie)?|msi|msp|pdf|phps|png|ppt(x|m)?|pot(x|m)?|pps(x|m)?|ppam|sld(x|m)?|thmx|qtm?|ra(m|r)?|sea|sit|tar|tgz|torrent|txt|wav|wma|wmv|wpd|xls(x|m|b)?|xlt(x|m)|xlam|xml|z|zip","trackColorbox":true},"user":{"uid":0,"permissionsHash":"d95d9a931399f4faa08f227c07c5d0d28779311a33930093f1d07bc1f17ad0b2"}}</script>
<script src="/sites/default/files/js/js_Ed0oHhsUb24GhAucQ8qXQ88vZavYaqFB0wOanzmnafc.js" type="84a890713d5daea6efec3db8-text/javascript"></script>
<script src="/sites/default/files/js/js_Ag07mDJjH4wHjAhnFZS66WftzmL1-zBAiPzvFX4Kz1w.js" type="84a890713d5daea6efec3db8-text/javascript"></script>
<script type="84a890713d5daea6efec3db8-text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","licenseKey":"48befe3114","applicationID":"56773492","transactionName":"MQdVN0FSWRVSAhIKWghNdgBHWlgIHBEHBFA5AVYAW1Y=","queueTime":0,"applicationTime":21,"atts":"HUBWQQlIShs=","errorBeacon":"bam-cell.nr-data.net","agent":""}</script><script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="84a890713d5daea6efec3db8-|49" defer=""></script></body>
</html>
