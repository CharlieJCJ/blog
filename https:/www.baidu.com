

<!DOCTYPE html>
<html lang="en" data-default-color-scheme=auto>



<head>
  <meta charset="UTF-8">
  <link rel="apple-touch-icon" sizes="76x76" href="/blog/img/fluid.png">
  <link rel="icon" href="/blog/img/fluid.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  
  <meta name="theme-color" content="#2f4154">
  <meta name="author" content="John Doe">
  <meta name="keywords" content="">
  
    <meta property="og:type" content="article">
<meta property="og:title" content="redirect test">
<meta property="og:url" content="https://www.baidu.com/">
<meta property="og:site_name" content="Hexo">
<meta property="og:locale" content="en_US">
<meta property="article:published_time" content="2023-04-23T09:37:34.000Z">
<meta property="article:modified_time" content="2023-04-23T09:39:43.122Z">
<meta property="article:author" content="John Doe">
<meta name="twitter:card" content="summary_large_image">
  
  
  
  <title>redirect test - Hexo</title>

  <link  rel="stylesheet" href="https://lib.baomitu.com/twitter-bootstrap/4.6.1/css/bootstrap.min.css" />



  <link  rel="stylesheet" href="https://lib.baomitu.com/github-markdown-css/4.0.0/github-markdown.min.css" />

  <link  rel="stylesheet" href="https://lib.baomitu.com/hint.css/2.7.0/hint.min.css" />

  <link  rel="stylesheet" href="https://lib.baomitu.com/fancybox/3.5.7/jquery.fancybox.min.css" />



<!-- 主题依赖的图标库，不要自行修改 -->
<!-- Do not modify the link that theme dependent icons -->

<link rel="stylesheet" href="//at.alicdn.com/t/font_1749284_hj8rtnfg7um.css">



<link rel="stylesheet" href="//at.alicdn.com/t/font_1736178_lbnruvf0jn.css">


<link  rel="stylesheet" href="/blog/css/main.css" />


  <link id="highlight-css" rel="stylesheet" href="/blog/css/highlight.css" />
  
    <link id="highlight-css-dark" rel="stylesheet" href="/blog/css/highlight-dark.css" />
  




  <script id="fluid-configs">
    var Fluid = window.Fluid || {};
    Fluid.ctx = Object.assign({}, Fluid.ctx)
    var CONFIG = {"hostname":"charliejcj.github.io","root":"/blog/","version":"1.9.4","typing":{"enable":true,"typeSpeed":70,"cursorChar":"_","loop":false,"scope":[]},"anchorjs":{"enable":true,"element":"h1,h2,h3,h4,h5,h6","placement":"left","visible":"hover","icon":""},"progressbar":{"enable":true,"height_px":3,"color":"#29d","options":{"showSpinner":false,"trickleSpeed":100}},"code_language":{"enable":true,"default":"TEXT"},"copy_btn":true,"image_caption":{"enable":true},"image_zoom":{"enable":true,"img_url_replace":["",""]},"toc":{"enable":true,"placement":"right","headingSelector":"h1,h2,h3,h4,h5,h6","collapseDepth":0},"lazyload":{"enable":true,"loading_img":"/img/loading.gif","onlypost":false,"offset_factor":2},"web_analytics":{"enable":false,"follow_dnt":true,"baidu":null,"google":null,"gtag":null,"tencent":{"sid":null,"cid":null},"woyaola":null,"cnzz":null,"leancloud":{"app_id":null,"app_key":null,"server_url":null,"path":"window.location.pathname","ignore_local":false}},"search_path":"/blog/local-search.xml"};

    if (CONFIG.web_analytics.follow_dnt) {
      var dntVal = navigator.doNotTrack || window.doNotTrack || navigator.msDoNotTrack;
      Fluid.ctx.dnt = dntVal && (dntVal.startsWith('1') || dntVal.startsWith('yes') || dntVal.startsWith('on'));
    }
  </script>
  <script  src="/blog/js/utils.js" ></script>
  <script  src="/blog/js/color-schema.js" ></script>
  


  
<meta name="generator" content="Hexo 6.3.0"></head>


<body>
  

  <header>
    

<div class="header-inner" style="height: 70vh;">
  <nav id="navbar" class="navbar fixed-top  navbar-expand-lg navbar-dark scrolling-navbar">
  <div class="container">
    <a class="navbar-brand" href="/blog/">
      <strong>Fluid</strong>
    </a>

    <button id="navbar-toggler-btn" class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <div class="animated-icon"><span></span><span></span><span></span></div>
    </button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto text-center">
        
          
          
          
          
            <li class="nav-item">
              <a class="nav-link" href="/blog/">
                <i class="iconfont icon-home-fill"></i>
                <span>Home</span>
              </a>
            </li>
          
        
          
          
          
          
            <li class="nav-item">
              <a class="nav-link" href="/blog/archives/">
                <i class="iconfont icon-archive-fill"></i>
                <span>Archives</span>
              </a>
            </li>
          
        
          
          
          
          
            <li class="nav-item">
              <a class="nav-link" href="/blog/categories/">
                <i class="iconfont icon-category-fill"></i>
                <span>Categories</span>
              </a>
            </li>
          
        
          
          
          
          
            <li class="nav-item">
              <a class="nav-link" href="/blog/tags/">
                <i class="iconfont icon-tags-fill"></i>
                <span>Tags</span>
              </a>
            </li>
          
        
          
          
          
          
            <li class="nav-item">
              <a class="nav-link" href="/blog/about/">
                <i class="iconfont icon-user-fill"></i>
                <span>About</span>
              </a>
            </li>
          
        
        
          <li class="nav-item" id="search-btn">
            <a class="nav-link" target="_self" href="javascript:;" data-toggle="modal" data-target="#modalSearch" aria-label="Search">
              <i class="iconfont icon-search"></i>
            </a>
          </li>
          
        
        
          <li class="nav-item" id="color-toggle-btn">
            <a class="nav-link" target="_self" href="javascript:;" aria-label="Color Toggle">
              <i class="iconfont icon-dark" id="color-toggle-icon"></i>
            </a>
          </li>
        
      </ul>
    </div>
  </div>
</nav>

  

<div id="banner" class="banner" parallax=true
     style="background: url('/blog/img/default.png') no-repeat center center; background-size: cover;">
  <div class="full-bg-img">
    <div class="mask flex-center" style="background-color: rgba(0, 0, 0, 0.3)">
      <div class="banner-text text-center fade-in-up">
        <div class="h2">
          
            <span id="subtitle" data-typed-text="redirect test"></span>
          
        </div>

        
          
  <div class="mt-3">
    
    
      <span class="post-meta">
        <i class="iconfont icon-date-fill" aria-hidden="true"></i>
        <time datetime="2023-04-23 02:37" pubdate>
          April 23, 2023 am
        </time>
      </span>
    
  </div>

  <div class="mt-1">
    
      <span class="post-meta mr-2">
        <i class="iconfont icon-chart"></i>
        
          0 words
        
      </span>
    

    
      <span class="post-meta mr-2">
        <i class="iconfont icon-clock-fill"></i>
        
        
        
          1 mins
        
      </span>
    

    
    
  </div>


        
      </div>

      
    </div>
  </div>
</div>

</div>

  </header>

  <main>
    
      

<div class="container-fluid nopadding-x">
  <div class="row nomargin-x">
    <div class="side-col d-none d-lg-block col-lg-2">
      

    </div>

    <div class="col-lg-8 nopadding-x-md">
      <div class="container nopadding-x-md" id="board-ctn">
        <div id="board">
          <article class="post-content mx-auto">
            <!-- SEO header -->
            <h1 style="display: none">redirect test</h1>
            
            
              <div class="markdown-body">
                
                
                
              </div>
            
            <hr/>
            <div>
              <div class="post-metas my-3">
  
  
</div>


              
  

  <div class="license-box my-3">
    <div class="license-title">
      <div>redirect test</div>
      <div>https://charliejcj.github.io/blog/https:/www.baidu.com</div>
    </div>
    <div class="license-meta">
      
        <div class="license-meta-item">
          <div>Author</div>
          <div>John Doe</div>
        </div>
      
      
        <div class="license-meta-item license-meta-date">
          <div>Posted on</div>
          <div>April 23, 2023</div>
        </div>
      
      
      
        <div class="license-meta-item">
          <div>Licensed under</div>
          <div>
            
              
              
                <a target="_blank" href="https://creativecommons.org/licenses/by/4.0/">
                  <span class="hint--top hint--rounded" aria-label="BY - Attribution">
                    <i class="iconfont icon-by"></i>
                  </span>
                </a>
              
            
          </div>
        </div>
      
    </div>
    <div class="license-icon iconfont"></div>
  </div>



              
                <div class="post-prevnext my-3">
                  <article class="post-prev col-6">
                    
                    
                  </article>
                  <article class="post-next col-6">
                    
                    
                      <a href="/blog/2023/04/23/new-post/" title="new post">
                        <span class="hidden-mobile">new post</span>
                        <span class="visible-mobile">Next</span>
                        <i class="iconfont icon-arrowright"></i>
                      </a>
                    
                  </article>
                </div>
              
            </div>

            
          </article>
        </div>
      </div>
    </div>

    <div class="side-col d-none d-lg-block col-lg-2">
      
  <aside class="sidebar" style="margin-left: -1rem">
    <div id="toc">
  <p class="toc-header">
    <i class="iconfont icon-list"></i>
    <span>Table of Contents</span>
  </p>
  <div class="toc-body" id="toc-body"></div>
</div>



  </aside>


    </div>
  </div>
</div>





  



  



  



  



  







    

    
      <a id="scroll-top-button" aria-label="TOP" href="#" role="button">
        <i class="iconfont icon-arrowup" aria-hidden="true"></i>
      </a>
    

    
      <div class="modal fade" id="modalSearch" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Search</h4>
        <button type="button" id="local-search-close" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <input type="text" id="local-search-input" class="form-control validate">
          <label data-error="x" data-success="v" for="local-search-input">Keyword</label>
        </div>
        <div class="list-group" id="local-search-result"></div>
      </div>
    </div>
  </div>
</div>

    

    
  </main>

  <footer>
    <div class="footer-inner">
  
    <div class="footer-content">
       <a href="https://hexo.io" target="_blank" rel="nofollow noopener"><span>Hexo</span></a> <i class="iconfont icon-love"></i> <a href="https://github.com/fluid-dev/hexo-theme-fluid" target="_blank" rel="nofollow noopener"><span>Fluid</span></a> 
    </div>
  
  
  
  
</div>

  </footer>

  <!-- Scripts -->
  
  <script  src="https://lib.baomitu.com/nprogress/0.2.0/nprogress.min.js" ></script>
  <link  rel="stylesheet" href="https://lib.baomitu.com/nprogress/0.2.0/nprogress.min.css" />

  <script>
    NProgress.configure({"showSpinner":false,"trickleSpeed":100})
    NProgress.start()
    window.addEventListener('load', function() {
      NProgress.done();
    })
  </script>


<script  src="https://lib.baomitu.com/jquery/3.6.0/jquery.min.js" ></script>
<script  src="https://lib.baomitu.com/twitter-bootstrap/4.6.1/js/bootstrap.min.js" ></script>
<script  src="/blog/js/events.js" ></script>
<script  src="/blog/js/plugins.js" ></script>


  <script  src="https://lib.baomitu.com/typed.js/2.0.12/typed.min.js" ></script>
  <script>
    (function (window, document) {
      var typing = Fluid.plugins.typing;
      var subtitle = document.getElementById('subtitle');
      if (!subtitle || !typing) {
        return;
      }
      var text = subtitle.getAttribute('data-typed-text');
      
        typing(text);
      
    })(window, document);
  </script>




  
    <script  src="/blog/js/img-lazyload.js" ></script>
  




  
<script>
  Fluid.utils.createScript('https://lib.baomitu.com/tocbot/4.18.2/tocbot.min.js', function() {
    var toc = jQuery('#toc');
    if (toc.length === 0 || !window.tocbot) { return; }
    var boardCtn = jQuery('#board-ctn');
    var boardTop = boardCtn.offset().top;

    window.tocbot.init(Object.assign({
      tocSelector     : '#toc-body',
      contentSelector : '.markdown-body',
      linkClass       : 'tocbot-link',
      activeLinkClass : 'tocbot-active-link',
      listClass       : 'tocbot-list',
      isCollapsedClass: 'tocbot-is-collapsed',
      collapsibleClass: 'tocbot-is-collapsible',
      scrollSmooth    : true,
      includeTitleTags: true,
      headingsOffset  : -boardTop,
    }, CONFIG.toc));
    if (toc.find('.toc-list-item').length > 0) {
      toc.css('visibility', 'visible');
    }

    Fluid.events.registerRefreshCallback(function() {
      if ('tocbot' in window) {
        tocbot.refresh();
        var toc = jQuery('#toc');
        if (toc.length === 0 || !tocbot) {
          return;
        }
        if (toc.find('.toc-list-item').length > 0) {
          toc.css('visibility', 'visible');
        }
      }
    });
  });
</script>


  <script src=https://lib.baomitu.com/clipboard.js/2.0.11/clipboard.min.js></script>

  <script>Fluid.plugins.codeWidget();</script>


  
<script>
  Fluid.utils.createScript('https://lib.baomitu.com/anchor-js/4.3.1/anchor.min.js', function() {
    window.anchors.options = {
      placement: CONFIG.anchorjs.placement,
      visible  : CONFIG.anchorjs.visible
    };
    if (CONFIG.anchorjs.icon) {
      window.anchors.options.icon = CONFIG.anchorjs.icon;
    }
    var el = (CONFIG.anchorjs.element || 'h1,h2,h3,h4,h5,h6').split(',');
    var res = [];
    for (var item of el) {
      res.push('.markdown-body > ' + item.trim());
    }
    if (CONFIG.anchorjs.placement === 'left') {
      window.anchors.options.class = 'anchorjs-link-left';
    }
    window.anchors.add(res.join(', '));

    Fluid.events.registerRefreshCallback(function() {
      if ('anchors' in window) {
        anchors.removeAll();
        var el = (CONFIG.anchorjs.element || 'h1,h2,h3,h4,h5,h6').split(',');
        var res = [];
        for (var item of el) {
          res.push('.markdown-body > ' + item.trim());
        }
        if (CONFIG.anchorjs.placement === 'left') {
          anchors.options.class = 'anchorjs-link-left';
        }
        anchors.add(res.join(', '));
      }
    });
  });
</script>


  
<script>
  Fluid.utils.createScript('https://lib.baomitu.com/fancybox/3.5.7/jquery.fancybox.min.js', function() {
    Fluid.plugins.fancyBox();
  });
</script>


  <script>Fluid.plugins.imageCaption();</script>

  <script  src="/blog/js/local-search.js" ></script>





<!-- 主题的启动项，将它保持在最底部 -->
<!-- the boot of the theme, keep it at the bottom -->
<script  src="/blog/js/boot.js" ></script>


  

  <noscript>
    <div class="noscript-warning">Blog works best with JavaScript enabled</div>
  </noscript>
</body>
</html>
