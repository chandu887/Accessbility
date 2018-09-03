 <head>
  <!-- <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/> -->
  <title> Code Box</title>
    <script type="text/javascript">
    	function sidemenuSearch(){
    		$('#resultItem').empty();
    		var input, filter, ul, li, a, i;
    	    input = document.getElementById("menusearch");
    	    filter = input.value.toUpperCase();
    	    ul = document.getElementsByClassName("mysidemenu");
    	    sidemenu = [];
    	    
    	    for (i = 0; i < ul.length; i++) {
    	        subLi = ul[i].getElementsByTagName("li");
    	        for(j= 0; j < subLi.length; j++) {
    	        	sidemenu.push(subLi[j]);
    	        }
    	    }
    	    
    	    searchedItem = [];
    	    for (i = 0; i < sidemenu.length; i++) {
    	        a = sidemenu[i].getElementsByTagName("a")[0]['lastChild']['data'];
    	        if (a.toUpperCase().indexOf(filter) > -1) {
    	        	searchedItem.push(sidemenu[i]);
    	        }
    	    }
    	   
    	    var newdiv = document.getElementById('resultItem');
    	    var newul = document.createElement('ul');
    	    
			newdiv.appendChild(newul);
			newdiv.setAttribute('style','display: inherit');
			newul.setAttribute('style','list-style-type: none;margin-left: -30px;');
			
    	    if(searchedItem) {
    	    	for(i =0; i < searchedItem.length; i ++) {
    	    		var newli=document.createElement('li');
    	    		newul.appendChild(newli);
    	    		newli.innerHTML= searchedItem[i]['innerHTML'];
    	    	}
    	    }
			
			if (!filter.length || !searchedItem.length) {
				 newdiv.setAttribute('style','display: none');
	    	}
    	}
    </script>
</head>
 <!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top gradient-ibiza">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
    <li class="nav-item">
      <form class="search-bar">
        <input type="text" class="form-control" placeholder="Enter keywords" onkeyup="sidemenuSearch()" id="menusearch">
         <a href="javascript:void();"><i class="icon-magnifier"></i></a>
      </form>
    </li>
  </ul>
     
  <ul class="navbar-nav align-items-center right-nav-link">
    
    <li class="nav-item dropdown-lg">
      <div class="row pt-2 pb-2">
        <div class="col-sm-12">
		   
		    <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javaScript:void();"> Home</a></li>
         </ol>
	   </div>
     
     </div>
    </li>
    
    
  </ul>
</nav>
</header>
     
     
     
<!--End topbar header-->
  <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="/">
       <img src="assets/images/logo-icon.png" class="logo-icon" alt="Bangodash">
       <h5 class="logo-text"> CODEBOX</h5>
     </a>
	 </div>
	 <ul class="sidebar-menu do-nicescrol " >
      
      
      <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-briefcase"></i>
          <span> Name from Content</span> <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu ">
		 <li ><a href="button"><i class="fa fa-circle-o"></i> Button</a></li>
            <li><a href="tab"><i class="fa fa-circle-o"></i> Tab</a></li>
            <li><a href="switch"><i class="fa fa-circle-o"></i> Switch</a></li>
		  <li><a href="cell"><i class="fa fa-circle-o"></i> Cell</a></li>
		  <li><a href="checkbox"><i class="fa fa-circle-o"></i> Checkbox</a></li>
		  <li><a href="columnheader"><i class="fa fa-circle-o"></i> Columnheader</a></li>
		  <li><a href="gridcell"><i class="fa fa-circle-o"></i> Gridcell</a></li>
		  <li><a href="heading"><i class="fa fa-circle-o"></i> Heading</a></li>
          <li><a href="link"><i class="fa fa-circle-o"></i> Link</a></li>
          <li><a href="menuitem"><i class="fa fa-circle-o"></i> Menuitem</a></li>
          <li><a href="menuitemcheckbox"><i class="fa fa-circle-o"></i>  Menuitemcheckbox</a></li>
		  <li><a href="menuitemradio"><i class="fa fa-circle-o"></i> Menuitemradio</a></li>
		  <li><a href="row"><i class="fa fa-circle-o"></i> Row</a></li>
		  <li><a href="rowgroup"><i class="fa fa-circle-o"></i> Rowgroup</a></li>
		  <li><a href="rowheader"><i class="fa fa-circle-o"></i> Rowheader</a></li>
          <li><a href="tooltip"><i class="fa fa-circle-o"></i> Tooltip</a></li>
          <li><a href="tree"><i class="fa fa-circle-o"></i> Tree</a></li>
          <li><a href="treeitem"><i class="fa fa-circle-o"></i> Treeitem</a></li>
        </ul>
      </li>
      
	  
      
      <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-layers"></i>
          <span> Abstract Roles</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="command"><i class="fa fa-circle-o"></i> Command</a></li>
    		  <li><a href="composite"><i class="fa fa-circle-o"></i> Composite</a></li>
    		  <li><a href="input"><i class="fa fa-circle-o"></i> Input</a></li>
    		  <li><a href="landmark"><i class="fa fa-circle-o"></i> Landmark</a></li>
    		  <li><a href="range"><i class="fa fa-circle-o"></i> Range</a></li>
    		  <li><a href="roletype"><i class="fa fa-circle-o"></i> Roletype</a></li>
    		  <li><a href="section"><i class="fa fa-circle-o"></i> Section</a></li>
    		  <li><a href="sectionhead"><i class="fa fa-circle-o"></i> Sectionhead</a></li>
    		  <li><a href="select"><i class="fa fa-circle-o"></i> Select</a></li>
          	  <li><a href="structure"><i class="fa fa-circle-o"></i> Structure</a></li>
              <li><a href="widget"><i class="fa fa-circle-o"></i> Widget</a></li>
           	  <li><a href="window"><i class="fa fa-circle-o"></i> Window</a></li>
        </ul>
      </li>
      <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-note"></i> <span> Widget Roles</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
    		   <li><a href="#"><i class="fa fa-circle-o"></i> Button</a></li>
    		   <li><a href="#"><i class="fa fa-circle-o"></i> Checkbox</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Gridcell</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Link</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Menuitem</a></li>
          <li><a href="#"><i class="fa fa-circle-o"></i>  Menuitemcheckbox</a></li>
		  <li><a href="#"><i class="fa fa-circle-o"></i> Menuitemradio</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Option</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Progressbar</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Radio</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Scrollbar</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Searchbox</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Separator ( when focusable )</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Slider</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Spinbutton</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Switch</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Tab</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Tabpanel</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Textbox</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Treeitem</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Combobox</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Grid</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Listbox</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Menu</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Menubar</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Radiogroup</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Tablist</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Tree</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Treegrid</a></li>
            
        </ul>
      </li>
      
	  
       <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-event"></i> <span> Document Structure</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="#"><i class="fa fa-circle-o"></i> Application</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Article</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Cell</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Columnheader</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Definition</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Directory</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Document</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Feed</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Figure</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Group</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Heading</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Img</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> List</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Listitem</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Math</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> None</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Note</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Presentation</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Row</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Rowgroup</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Rowheader</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Separator ( When not focusable )</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Table</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Term</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Toolbar</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Tooltip</a></li>
            
        </ul>
       </li>
	   
	   	   
	   <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-grid"></i> <span> Landmark Roles</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="#"><i class="fa fa-circle-o"></i> Banner</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Complementary</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Contentinfo</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Form</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Main</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Navigation</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Region </a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Search</a></li>
            
            
        </ul>
       </li>
	   
	   <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-chart"></i> <span> Live Region Roles</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="#"><i class="fa fa-circle-o"></i> Alert</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Log</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Marquee</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Status</a></li>
    		  <li><a href="#"><i class="fa fa-circle-o"></i> Timer</a></li>
    		  
        </ul>
       </li>
	   
	   <li class="mysidemenu">
        <a href="javaScript:void();" class="waves-effect">
          <i class="icon-map"></i> <span> Window Roles</span>
          <i class="fa fa-angle-left float-right"></i>
        </a>
        <ul class="sidebar-submenu">
              <li><a href="#"><i class="fa fa-circle-o"></i> Alertdialog</a></li>
		      <li><a href="#"><i class="fa fa-circle-o"></i> Dialog</a></li>
        </ul>
       </li>

    </ul>
       
       
       
       
	 
   </div>
   <!--End sidebar-wrapper-->
   <div class="suggestionBox" id="resultItem">
     
     </div>
     
