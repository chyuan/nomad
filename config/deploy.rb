


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>ec2onrails/examples/deploy.rb at master · pauldowman/ec2onrails</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

    
    

    <meta content="authenticity_token" name="csrf-param" />
<meta content="tRRKdVS6av1Eg6s5Hcgn/0YKWExJneZnUaY74zNbzKk=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github-61ae1d367be26efd3260c8a23fc81353611bfa47.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github2-8e705cfff4a1ea8c33dd5a68bcbb57553cb4fbaa.css" media="screen" rel="stylesheet" type="text/css" />
    
    
    

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/frameworks-31b6b84bca1e7d3f3907f63a4dd7f9bbda3a0eda.js" type="text/javascript"></script>
    
    <script defer="defer" src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/github-88c09a33a6ebba4abecc6d3381fddeeb6b55fb13.js" type="text/javascript"></script>
    
    

      <link rel='permalink' href='/pauldowman/ec2onrails/blob/cea7c67757133767f80d7659f4f6f11a07f4fe94/examples/deploy.rb'>
    <meta property="og:title" content="ec2onrails"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/pauldowman/ec2onrails"/>
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-140.png?1329920549"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="ec2onrails - EC2 on Rails - Deploy a Ruby on Rails app on EC2 in five minutes"/>

    <meta name="description" content="ec2onrails - EC2 on Rails - Deploy a Ruby on Rails app on EC2 in five minutes" />

  <link href="https://github.com/pauldowman/ec2onrails/commits/master.atom" rel="alternate" title="Recent Commits to ec2onrails:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob  vis-public env-production " data-blob-contribs-enabled="yes">
    <div id="wrapper">

    
    
    

      <div id="header" class="true clearfix">
        <div class="container clearfix">
          <a class="site-logo" href="https://github.com/">
            <!--[if IE]>
            <img alt="GitHub" class="github-logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7.png?1329920549" />
            <img alt="GitHub" class="github-logo-hover" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7-hover.png?1329920549" />
            <![endif]-->
            <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1329920549" />
            <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1329920549" />
          </a>

              
    <div class="topsearch ">
        <form accept-charset="UTF-8" action="/search" id="top_search_form" method="get">
  <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search"><span class="mini-icon advanced-search"></span></a>
  <div class="search placeholder-field js-placeholder-field">
    <input type="text" class="search my_repos_autocompleter" id="global-search-field" name="q" results="5" spellcheck="false" autocomplete="off" data-autocomplete="my-repos-autocomplete" placeholder="Search&hellip;" data-hotkey="s" />
    <div id="my-repos-autocomplete" class="autocomplete-results">
      <ul class="js-navigation-container"></ul>
    </div>
    <input type="submit" value="Search" class="button">
    <span class="mini-icon search-input"></span>
  </div>
  <input type="hidden" name="type" value="Everything" />
  <input type="hidden" name="repo" value="" />
  <input type="hidden" name="langOverride" value="" />
  <input type="hidden" name="start_value" value="1" />
</form>
      
      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
          <li><a href="https://gist.github.com">Gist</a></li>
          <li><a href="/blog">Blog</a></li>
        <li><a href="http://help.github.com">Help</a></li>
      </ul>
    </div>


            


  <div id="userbox">
    <div id="user">
      <a href="https://github.com/jeanettehuang"><img height="20" src="https://secure.gravatar.com/avatar/22717edbfa22cb42f9887989b1799969?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" /></a>
      <a href="https://github.com/jeanettehuang" class="name">jeanettehuang</a>
    </div>
    <ul id="user-links">
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a New Repo"><span class="mini-icon create"></span></a>
      </li>
      <li>
        <a href="/inbox/notifications" id="notifications" class="tooltipped downwards" title="Notifications">
          <span class="mini-icon notifications"></span>
        </a>
      </li>
      <li><a href="/settings/profile" id="settings" class="tooltipped downwards" title="Account Settings"><span class="mini-icon account-settings"></span></a></li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Log Out"><span class="mini-icon logout"></span></a>
      </li>
    </ul>
  </div>



          
        </div>
      </div>

      

            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="container hentry">
        <div class="pagehead repohead instapaper_ignore readability-menu">
        <div class="title-actions-bar">
          



              <ul class="pagehead-actions">



          <li class="js-toggler-container watch-button-container ">
            <a href="/pauldowman/ec2onrails/toggle_watch" class="minibutton btn-i-type-i-switcher switcher count btn-watches js-toggler-target watch-button lighter" data-remote="true" data-method="post" rel="nofollow"><span><span class="icon"></span><i class="js-watcher-count">290</i> Watch</span></a>
            <a href="/pauldowman/ec2onrails/toggle_watch" class="minibutton btn-i-type-i-switcher switcher count btn-unfollows js-toggler-target unwatch-button lighter" data-remote="true" data-method="post" rel="nofollow"><span><span class="icon"></span><i class="js-watcher-count">290</i> Unwatch</span></a>
          </li>

              <li><a href="/pauldowman/ec2onrails/fork" class="minibutton btn-i-type-i-switcher switcher count btn-forks js-toggler-target fork-button lighter" rel="nofollow" data-method="post"><span><span class="icon"></span><i>63</i> Fork</span></a>
              </li>


    </ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title">
            <span class="repo-label"><span class="public">public</span></span>
            <span class="mega-icon public-repo"></span>
            <span class="author vcard">
<a href="/pauldowman" class="url fn" itemprop="url" rel="author">              <span itemprop="title">pauldowman</span>
              </a></span> /
            <strong><a href="/pauldowman/ec2onrails" class="js-current-repository">ec2onrails</a></strong>
          </h1>
        </div>

          

  <ul class="tabs">
    <li><a href="/pauldowman/ec2onrails" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/pauldowman/ec2onrails/network" highlight="repo_network">Network</a>
    <li><a href="/pauldowman/ec2onrails/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/pauldowman/ec2onrails/issues" highlight="repo_issues">Issues <span class='counter'>0</span></a></li>


    <li><a href="/pauldowman/ec2onrails/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>

  </ul>
 
<div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/pauldowman/ec2onrails/tree-list/cea7c67757133767f80d7659f4f6f11a07f4fe94"
      data-blob-url-prefix="/pauldowman/ec2onrails/blob/cea7c67757133767f80d7659f4f6f11a07f4fe94"
    >

  <div class="breadcrumb">
    <span class="bold"><a href="/pauldowman/ec2onrails">ec2onrails</a></span> /
    <input class="tree-finder-input js-navigation-enable" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/pauldowman/ec2onrails/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever" rel="nofollow">Dismiss</a>
        <span class="bold">Octotip:</span> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser" cellpadding="0" cellspacing="0">
    <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list js-navigation-container">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form accept-charset="UTF-8">
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        <span>Go</span>
      </button>
    </div>
  </form>
</div>


<div class="subnav-bar">

  <ul class="actions subnav">
    <li><a href="/pauldowman/ec2onrails/tags" class="" highlight="repo_tags">Tags <span class="counter">10</span></a></li>
    <li><a href="/pauldowman/ec2onrails/downloads" class="blank downloads-blank" highlight="repo_downloads">Downloads <span class="counter">0</span></a></li>
    
  </ul>

  <ul class="scope">
    <li class="switcher">

      <div class="context-menu-container js-menu-container js-context-menu">
        <a href="#"
           class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
           data-hotkey="w"
           data-master-branch="master"
           data-ref="master">
          <span><span class="icon"></span><i>branch:</i> master</span>
        </a>

        <div class="context-pane commitish-context js-menu-content">
          <a href="javascript:;" class="close js-menu-close"><span class="mini-icon remove-close"></span></a>
          <div class="context-title">Switch Branches/Tags</div>
          <div class="context-body pane-selector commitish-selector js-navigation-container">
            <div class="filterbar">
              <input type="text" id="context-commitish-filter-field" class="js-navigation-enable" placeholder="Filter branches/tags" data-filterable />

              <ul class="tabs">
                <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
              </ul>
            </div>

            <div class="js-filter-tab js-filter-branches" data-filterable-for="context-commitish-filter-field">
              <div class="no-results js-not-filterable">Nothing to show</div>
                <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/0.9.9.1/examples/deploy.rb" class="js-navigation-open" data-name="0.9.9.1" rel="nofollow">0.9.9.1</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/experimental/examples/deploy.rb" class="js-navigation-open" data-name="experimental" rel="nofollow">experimental</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/master/examples/deploy.rb" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                  </h4>
                </div>
            </div>

            <div class="js-filter-tab js-filter-tags" style="display:none" data-filterable-for="context-commitish-filter-field">
              <div class="no-results js-not-filterable">Nothing to show</div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.11-experimental/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.11-experimental" rel="nofollow">REL-0.9.11-experimental</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.9.1/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.9.1" rel="nofollow">REL-0.9.9.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.9/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.9" rel="nofollow">REL-0.9.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.8.1/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.8.1" rel="nofollow">REL-0.9.8.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.8/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.8" rel="nofollow">REL-0.9.8</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.7/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.7" rel="nofollow">REL-0.9.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.6/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.6" rel="nofollow">REL-0.9.6</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.5/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.5" rel="nofollow">REL-0.9.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.4/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.4" rel="nofollow">REL-0.9.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target">
                  <h4>
                      <a href="/pauldowman/ec2onrails/blob/REL-0.9.3/examples/deploy.rb" class="js-navigation-open" data-name="REL-0.9.3" rel="nofollow">REL-0.9.3</a>
                  </h4>
                </div>
            </div>
          </div>
        </div><!-- /.commitish-context-context -->
      </div>

    </li>
  </ul>

  <ul class="subnav with-scope">

    <li><a href="/pauldowman/ec2onrails" class="selected" highlight="repo_source">Files</a></li>
    <li><a href="/pauldowman/ec2onrails/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/pauldowman/ec2onrails/branches" class="" highlight="repo_branches" rel="nofollow">Branches <span class="counter">3</span></a></li>
  </ul>

</div>

  
  
  


          

        </div><!-- /.repohead -->

        





<!-- block_view_fragment_key: views8/v8/blob:v21:054df8df2e9928e13a2c2e55e69d7343 -->
  <div id="slider">

    <div class="breadcrumb" data-path="examples/deploy.rb/">
      <b itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/pauldowman/ec2onrails/tree/cea7c67757133767f80d7659f4f6f11a07f4fe94" class="js-rewrite-sha" itemprop="url"><span itemprop="title">ec2onrails</span></a></b> / <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/pauldowman/ec2onrails/tree/cea7c67757133767f80d7659f4f6f11a07f4fe94/examples" class="js-rewrite-sha" itemscope="url"><span itemprop="title">examples</span></a></span> / <strong class="final-path">deploy.rb</strong> <span class="js-clippy mini-icon clippy " data-clipboard-text="examples/deploy.rb" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
    </div>


      <div class="commit file-history-tease" data-path="examples/deploy.rb/">
        <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/6436e3d1e0ac332c52b253c94667cb5b?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="24" />
        <span class="author"><a href="/pauldowman">pauldowman</a></span>
        <time class="js-relative-date" datetime="2009-04-30T06:32:17-07:00" title="2009-04-30 06:32:17">April 30, 2009</time>
        <div class="commit-title">
            <a href="/pauldowman/ec2onrails/commit/36fd82ec1a609d9947aacd9142571f4d9a2497a3" class="message">First pass at switching from mongrel to Passenger. Not yet fully test…</a>
        </div>

        <div class="participation">
          <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>2</strong> contributors</a></p>
              <a class="avatar tooltipped downwards" title="skippy" href="/pauldowman/ec2onrails/commits/master/examples/deploy.rb?author=skippy"><img height="20" src="https://secure.gravatar.com/avatar/925b3c7354d16011fcb78895d2c6ceb3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="pauldowman" href="/pauldowman/ec2onrails/commits/master/examples/deploy.rb?author=pauldowman"><img height="20" src="https://secure.gravatar.com/avatar/6436e3d1e0ac332c52b253c94667cb5b?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" /></a>


        </div>
        <div id="blob_contributors_box" style="display:none">
          <h2>Users on GitHub who have contributed to this file</h2>
          <ul class="facebox-user-list">
            <li>
              <img height="24" src="https://secure.gravatar.com/avatar/925b3c7354d16011fcb78895d2c6ceb3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="24" />
              <a href="/skippy">skippy</a>
            </li>
            <li>
              <img height="24" src="https://secure.gravatar.com/avatar/6436e3d1e0ac332c52b253c94667cb5b?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="24" />
              <a href="/pauldowman">pauldowman</a>
            </li>
          </ul>
        </div>
      </div>

    <div class="frames">
      <div class="frame frame-center" data-path="examples/deploy.rb/" data-permalink-url="/pauldowman/ec2onrails/blob/cea7c67757133767f80d7659f4f6f11a07f4fe94/examples/deploy.rb" data-title="ec2onrails/examples/deploy.rb at master · pauldowman/ec2onrails · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon text-file"></b></span>
                <span class="mode" title="File Mode">100644</span>
                  <span>104 lines (86 sloc)</span>
                <span>4.971 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                    <a class="grouped-button file-edit-link minibutton bigger lighter js-rewrite-sha" href="/pauldowman/ec2onrails/edit/cea7c67757133767f80d7659f4f6f11a07f4fe94/examples/deploy.rb" data-method="post" rel="nofollow" data-hotkey="e"><span>Edit this file</span></a>
                  </li>

                <li>
                  <a href="/pauldowman/ec2onrails/raw/master/examples/deploy.rb" class="minibutton btn-raw grouped-button bigger lighter" id="raw-url"><span><span class="icon"></span>Raw</span></a>
                </li>
                  <li>
                    <a href="/pauldowman/ec2onrails/blame/master/examples/deploy.rb" class="minibutton btn-blame grouped-button bigger lighter"><span><span class="icon"></span>Blame</span></a>
                  </li>
                <li>
                  <a href="/pauldowman/ec2onrails/commits/master/examples/deploy.rb" class="minibutton btn-history grouped-button bigger lighter" rel="nofollow"><span><span class="icon"></span>History</span></a>
                </li>
              </ul>
            </div>
              <div class="data type-ruby">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1"># This is a sample Capistrano config file for EC2 on Rails.</span></div><div class='line' id='LC2'><span class="c1"># It should be edited and customized.</span></div><div class='line' id='LC3'><br/></div><div class='line' id='LC4'><span class="n">set</span> <span class="ss">:application</span><span class="p">,</span> <span class="s2">&quot;yourapp&quot;</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="n">set</span> <span class="ss">:repository</span><span class="p">,</span> <span class="s2">&quot;http://svn.foo.com/svn/</span><span class="si">#{</span><span class="n">application</span><span class="si">}</span><span class="s2">/trunk&quot;</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><span class="c1"># NOTE: for some reason Capistrano requires you to have both the public and</span></div><div class='line' id='LC9'><span class="c1"># the private key in the same folder, the public key should have the </span></div><div class='line' id='LC10'><span class="c1"># extension &quot;.pub&quot;.</span></div><div class='line' id='LC11'><span class="n">ssh_options</span><span class="o">[</span><span class="ss">:keys</span><span class="o">]</span> <span class="o">=</span> <span class="o">[</span><span class="s2">&quot;</span><span class="si">#{</span><span class="no">ENV</span><span class="o">[</span><span class="s1">&#39;HOME&#39;</span><span class="o">]</span><span class="si">}</span><span class="s2">/.ssh/your-ec2-key&quot;</span><span class="o">]</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="c1"># Your EC2 instances. Use the ec2-xxx....amazonaws.com hostname, not</span></div><div class='line' id='LC14'><span class="c1"># any other name (in case you have your own DNS alias) or it won&#39;t</span></div><div class='line' id='LC15'><span class="c1"># be able to resolve to the internal IP address.</span></div><div class='line' id='LC16'><span class="n">role</span> <span class="ss">:web</span><span class="p">,</span>      <span class="s2">&quot;ec2-12-xx-xx-xx.z-1.compute-1.amazonaws.com&quot;</span></div><div class='line' id='LC17'><span class="n">role</span> <span class="ss">:memcache</span><span class="p">,</span> <span class="s2">&quot;ec2-12-xx-xx-xx.z-1.compute-1.amazonaws.com&quot;</span></div><div class='line' id='LC18'><span class="n">role</span> <span class="ss">:db</span><span class="p">,</span>       <span class="s2">&quot;ec2-56-xx-xx-xx.z-1.compute-1.amazonaws.com&quot;</span><span class="p">,</span> <span class="ss">:primary</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC19'><span class="c1"># role :db,       &quot;ec2-56-xx-xx-xx.z-1.compute-1.amazonaws.com&quot;, :primary =&gt; true, :ebs_vol_id =&gt; &#39;vol-12345abc&#39;</span></div><div class='line' id='LC20'><span class="c1"># optinally, you can specify Amazon&#39;s EBS volume ID if the database is persisted </span></div><div class='line' id='LC21'><span class="c1"># via Amazon&#39;s EBS.  See the main README for more information.</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="c1"># Whatever you set here will be taken set as the default RAILS_ENV value</span></div><div class='line' id='LC24'><span class="c1"># on the server. Your app and your hourly/daily/weekly/monthly scripts</span></div><div class='line' id='LC25'><span class="c1"># will run with RAILS_ENV set to this value.</span></div><div class='line' id='LC26'><span class="n">set</span> <span class="ss">:rails_env</span><span class="p">,</span> <span class="s2">&quot;production&quot;</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="c1"># EC2 on Rails config. </span></div><div class='line' id='LC29'><span class="c1"># NOTE: Some of these should be omitted if not needed.</span></div><div class='line' id='LC30'><span class="n">set</span> <span class="ss">:ec2onrails_config</span><span class="p">,</span> <span class="p">{</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="c1"># S3 bucket and &quot;subdir&quot; used by the ec2onrails:db:restore task</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="c1"># NOTE: this only applies if you are not using EBS</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="ss">:restore_from_bucket</span> <span class="o">=&gt;</span> <span class="s2">&quot;your-bucket&quot;</span><span class="p">,</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="ss">:restore_from_bucket_subdir</span> <span class="o">=&gt;</span> <span class="s2">&quot;database&quot;</span><span class="p">,</span></div><div class='line' id='LC35'>&nbsp;&nbsp;</div><div class='line' id='LC36'>&nbsp;&nbsp;<span class="c1"># S3 bucket and &quot;subdir&quot; used by the ec2onrails:db:archive task</span></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="c1"># This does not affect the automatic backup of your MySQL db to S3, it&#39;s</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="c1"># just for manually archiving a db snapshot to a different bucket if </span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="c1"># desired.</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="c1"># NOTE: this only applies if you are not using EBS</span></div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="ss">:archive_to_bucket</span> <span class="o">=&gt;</span> <span class="s2">&quot;your-other-bucket&quot;</span><span class="p">,</span></div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="ss">:archive_to_bucket_subdir</span> <span class="o">=&gt;</span> <span class="s2">&quot;db-archive/</span><span class="si">#{</span><span class="no">Time</span><span class="o">.</span><span class="n">new</span><span class="o">.</span><span class="n">strftime</span><span class="p">(</span><span class="s1">&#39;%Y-%m-%d--%H-%M-%S&#39;</span><span class="p">)</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">,</span></div><div class='line' id='LC43'>&nbsp;&nbsp;</div><div class='line' id='LC44'>&nbsp;&nbsp;<span class="c1"># Set a root password for MySQL. Run &quot;cap ec2onrails:db:set_root_password&quot;</span></div><div class='line' id='LC45'>&nbsp;&nbsp;<span class="c1"># to enable this. This is optional, and after doing this the</span></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="c1"># ec2onrails:db:drop task won&#39;t work, but be aware that MySQL accepts </span></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="c1"># connections on the public network interface (you should block the MySQL</span></div><div class='line' id='LC48'>&nbsp;&nbsp;<span class="c1"># port with the firewall anyway). </span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="c1"># If you don&#39;t care about setting the mysql root password then remove this.</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="ss">:mysql_root_password</span> <span class="o">=&gt;</span> <span class="s2">&quot;your-mysql-root-password&quot;</span><span class="p">,</span></div><div class='line' id='LC51'>&nbsp;&nbsp;</div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="c1"># Any extra Ubuntu packages to install if desired</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="c1"># If you don&#39;t want to install extra packages then remove this.</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="ss">:packages</span> <span class="o">=&gt;</span> <span class="o">[</span><span class="s2">&quot;logwatch&quot;</span><span class="p">,</span> <span class="s2">&quot;imagemagick&quot;</span><span class="o">]</span><span class="p">,</span></div><div class='line' id='LC55'>&nbsp;&nbsp;</div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="c1"># Any extra RubyGems to install if desired: can be &quot;gemname&quot; or if a </span></div><div class='line' id='LC57'>&nbsp;&nbsp;<span class="c1"># particular version is desired &quot;gemname -v 1.0.1&quot;</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="c1"># If you don&#39;t want to install extra rubygems then remove this</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="c1"># NOTE: if you are using rails 2.1, ec2onrails calls &#39;sudo rake gem:install&#39;,</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="c1"># which will install gems defined in your rails configuration</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="ss">:rubygems</span> <span class="o">=&gt;</span> <span class="o">[</span><span class="s2">&quot;rmagick&quot;</span><span class="p">,</span> <span class="s2">&quot;rfacebook -v 0.9.7&quot;</span><span class="o">]</span><span class="p">,</span></div><div class='line' id='LC62'>&nbsp;&nbsp;</div><div class='line' id='LC63'>&nbsp;&nbsp;<span class="c1"># extra security measures are taken if this is true, BUT it makes initial</span></div><div class='line' id='LC64'>&nbsp;&nbsp;<span class="c1"># experimentation and setup a bit tricky.  For example, if you do not</span></div><div class='line' id='LC65'>&nbsp;&nbsp;<span class="c1"># have your ssh keys setup correctly, you will be locked out of your</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="c1"># server after 3 attempts for upto 3 months.  </span></div><div class='line' id='LC67'>&nbsp;&nbsp;<span class="ss">:harden_server</span> <span class="o">=&gt;</span> <span class="kp">false</span><span class="p">,</span></div><div class='line' id='LC68'>&nbsp;&nbsp;</div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="c1">#if you want to harden the server, or setup email signing, you will need to set the domain</span></div><div class='line' id='LC70'>&nbsp;&nbsp;<span class="c1">#if you use Capistrano&#39;s multistage extension (recommended!), you can add a line like this to your</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="c1">#environment specific file:</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="c1">#      ec2onrails_config[:service_domain] = &#39;staging.mydomain.com&#39;</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="ss">:service_domain</span> <span class="o">=&gt;</span> <span class="kp">nil</span><span class="p">,</span></div><div class='line' id='LC74'>&nbsp;&nbsp;</div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="c1"># Set the server timezone. run &quot;cap -e ec2onrails:server:set_timezone&quot; for </span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="c1"># details</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="ss">:timezone</span> <span class="o">=&gt;</span> <span class="s2">&quot;UTC&quot;</span><span class="p">,</span></div><div class='line' id='LC78'>&nbsp;&nbsp;</div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="c1"># Files to deploy to the server (they&#39;ll be owned by root). It&#39;s intended</span></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="c1"># mainly for customized config files for new packages installed via the </span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="c1"># ec2onrails:server:install_packages task. Subdirectories and files inside</span></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="c1"># here will be placed in the same structure relative to the root of the</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="c1"># server&#39;s filesystem. </span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="c1"># If you don&#39;t need to deploy customized config files to the server then</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="c1"># remove this.</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="ss">:server_config_files_root</span> <span class="o">=&gt;</span> <span class="s2">&quot;../server_configs&quot;</span><span class="p">,</span></div><div class='line' id='LC87'>&nbsp;&nbsp;</div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="c1"># If config files are deployed, some services might need to be restarted.</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="c1"># If you don&#39;t need to deploy customized config files to the server then</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="c1"># remove this.</span></div><div class='line' id='LC91'>&nbsp;&nbsp;<span class="ss">:services_to_restart</span> <span class="o">=&gt;</span> <span class="sx">%w(postfix sysklogd)</span><span class="p">,</span></div><div class='line' id='LC92'>&nbsp;&nbsp;</div><div class='line' id='LC93'>&nbsp;&nbsp;<span class="c1"># Set an email address to forward admin mail messages to. If you don&#39;t</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="c1"># want to receive mail from the server (e.g. monit alert messages) then</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="c1"># remove this.</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="ss">:mail_forward_address</span> <span class="o">=&gt;</span> <span class="s2">&quot;you@yourdomain.com&quot;</span><span class="p">,</span></div><div class='line' id='LC97'>&nbsp;&nbsp;</div><div class='line' id='LC98'>&nbsp;&nbsp;<span class="c1"># Set this if you want SSL to be enabled on the web server. The SSL cert </span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="c1"># and key files need to exist on the server, The cert file should be in</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="c1"># /etc/ssl/certs/default.pem and the key file should be in</span></div><div class='line' id='LC101'>&nbsp;&nbsp;<span class="c1"># /etc/ssl/private/default.key (see :server_config_files_root).</span></div><div class='line' id='LC102'>&nbsp;&nbsp;<span class="ss">:enable_ssl</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC103'><span class="p">}</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>

  </div>

<div class="frame frame-loading large-loading-area" style="display:none;" data-tree-list-url="/pauldowman/ec2onrails/tree-list/cea7c67757133767f80d7659f4f6f11a07f4fe94" data-blob-url-prefix="/pauldowman/ec2onrails/blob/cea7c67757133767f80d7659f4f6f11a07f4fe94">
  <img src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-64.gif?1329920549" height="64" width="64">
</div>

      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer" >
        
  <div class="upper_footer">
     <div class="container clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="https://github.com/training">Training</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://get.gaug.es/">Gauges: Analyze web traffic</a></li>
         <li><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></li>
         <li><a href="https://gist.github.com">Gist: Code snippets</a></li>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://mobile.github.com/">Issues for iPhone</a></li>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Extras</h4>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="container clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2012 <span title="0.07002s from fe15.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

      <div class="sponsor">
        <a href="http://www.rackspace.com" class="logo">
          <img alt="Dedicated Server" height="36" src="https://a248.e.akamai.net/assets.github.com/images/modules/footer/rackspaces_logo.png?1329920549" width="38" />
        </a>
        Powered by the <a href="http://www.rackspace.com ">Dedicated
        Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
        Computing</a> of Rackspace Hosting<span>&reg;</span>
      </div>
  </div><!-- /.site -->
</div><!-- /.lower_footer -->

      </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div class="ajax-error-message">
      <p><span class="mini-icon exclamation"></span> Something went wrong with that request. Please try again. <a href="javascript:;" class="ajax-error-dismiss">Dismiss</a></p>
    </div>

    <div id="logo-popup">
      <h2>Looking for the GitHub logo?</h2>
      <ul>
        <li>
          <h4>GitHub Logo</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip"><img alt="Github_logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/github_logo.png?1329920549" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip" class="minibutton btn-download download"><span><span class="icon"></span>Download</span></a>
        </li>
        <li>
          <h4>The Octocat</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip"><img alt="Octocat" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1329920549" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip" class="minibutton btn-download download"><span><span class="icon"></span>Download</span></a>
        </li>
      </ul>
    </div>

    
    
    
    <span id='server_response_time' data-time='0.07286' data-host='fe15'></span>
  </body>
</html>

