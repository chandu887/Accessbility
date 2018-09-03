<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Code Box</title>
<%@include file="header.jsp"%>

<script type="text/javascript">
    	$(document).ready(function (){
    		$("#H").attr('style',"display: none");
    		$("#C").attr('style',"display: none");
    		$("#J").attr('style',"display: none");
    		//$("#elementdiv").attr('style',"display: none");
    		
    		$('.arial').on('change', function() {
    			   $('.arial').not(this).prop('checked', false);
    			   $('#H').html($(this).val( ));
    			   if($(this).is(":checked")) {
    				   $("#H").attr('style',"display: true");
    				   $('#H').html($(this).val( ) + "  --- html");
    				   $("#C").attr('style',"display: true");
    				   $('#C').html($(this).val( ) + "  ---css");
    				   $("#J").attr('style',"display: true");
    				   $('#J').html($(this).val( ) + "  ---js");
    				//   document.getElementById('elementdiv').style.display = 'block';
    				  /*  $("#elementdiv").attr('style',"display: true");
    				   $('#elementdiv').html($(this).val( ) + "   ---element"); */
    			   }
    			   	
    			   else{
    				   $("#H").attr('style',"display: none");
    		    		$("#C").attr('style',"display: none");
    		    		$("#J").attr('style',"display: none");
    		    		//$("#elementdiv").attr('style',"display: none");
    			   }
    			});
    	});
    </script>
</head>

<body>
	<%@include file="inside.jsp"%>
	<!-- Start wrapper-->
	<div id="wrapper">

		<!--Start topbar header-->
		<header class="topbar-nav">
			<nav class="navbar navbar-expand fixed-top gradient-ibiza">
				<ul class="navbar-nav mr-auto align-items-center">
					<li class="nav-item"><a class="nav-link toggle-menu"
						href="javascript:void();"> <i class="icon-menu menu-icon"></i>
					</a></li>
					<li class="nav-item">
						<form class="search-bar">
							<input type="text" class="form-control"
								placeholder="Enter keywords"> <a
								href="javascript:void();"><i class="icon-magnifier"></i></a>
						</form>
					</li>
				</ul>

				<ul class="navbar-nav align-items-center right-nav-link">

					<li class="nav-item dropdown-lg">
						<div class="row pt-2 pb-2">
							<div class="col-sm-12">

								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="javaScript:void();">
											Home</a></li>
								</ol>
							</div>

						</div>
					</li>


				</ul>
			</nav>
		</header>
		<!--End topbar header-->

		<div class="clearfix"></div>

		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">

					<div class="col-md-3">
						<div class="card mt-30">
							<div class="card-header text-uppercase">Arial Attributes</div>
							<div class="card-body" >
								<div class="demo-checkbox"
									style="height: 250px; overflow: auto">
									<input type="checkbox" id="md_checkbox_36" 	class="arial filled-in chk-col-primary" value="Aria-activedescendant" />
									<label for="md_checkbox_36"> Aria-activedescendant</label> 
									
									<input type="checkbox" id="md_checkbox_15" 	class="arial filled-in chk-col-primary" value="Arial-atomic" />
									<label for="md_checkbox_15"> Arial-atomic</label> 
									
									<input type="checkbox" id="md_checkbox_16" 	class="arial filled-in chk-col-success" value="Aria-busy_state" />
									<label for="md_checkbox_16"> Aria-busy (state)</label> 
									
									<input  type="checkbox" id="md_checkbox_17" class="arial filled-in chk-col-info" value="Arial-controls" />
									<label for="md_checkbox_17"> Aria-controls</label>
									
									<input type="checkbox" id="md_checkbox_18" class="arial filled-in chk-col-warning" value="Arial-current" />
									<label for="md_checkbox_18"> Aria-current (state)</label>
									
									<input type="checkbox" id="md_checkbox_19" 	class="arial filled-in chk-col-primary" value="Aria-describedby" />
									<label for="md_checkbox_19"> Aria-describedby</label> 
									
									<input 	type="checkbox" id="md_checkbox_20" class="arial filled-in chk-col-success" value="Aria-details" />
									<label for="md_checkbox_20"> Aria-details</label>
									
									<input type="checkbox" id="md_checkbox_21" class="arial filled-in chk-col-info" value="Aria-disabled" />
									<label for="md_checkbox_21"> Aria-disabled (state)</label> 
									
									<input type="checkbox" id="md_checkbox_22" class="arial filled-in chk-col-info" value="Aria-dropeffect" />
									<label for="md_checkbox_22"> Aria-dropeffect</label> 
									
									<input type="checkbox" id="md_checkbox_23" class="arial filled-in chk-col-info" value="Aria-errormessage" />
									<label for="md_checkbox_23"> Aria-errormessage</label> 
									
									<input type="checkbox" id="md_checkbox_37" class="arial filled-in chk-col-info" value="Aria-expanded_state" />
									<label for="md_checkbox_37"> Aria-expanded (state)</label> 
									
									<input type="checkbox" id="md_checkbox_24" class="arial filled-in chk-col-info" value="Aria-flowto" />
									<label for="md_checkbox_24"> Aria-flowto</label> 
									
									<input type="checkbox" id="md_checkbox_25" class="arial filled-in chk-col-info" value="Aria-grabbed_state" />
									<label for="md_checkbox_25"> Aria-grabbed (state)</label> 
									
									<input type="checkbox" id="md_checkbox_26" class="arial filled-in chk-col-info" value="Aria-haspopup" />
									<label for="md_checkbox_26"> Aria-haspopup</label> 
									
									<input type="checkbox" id="md_checkbox_27" class="arial filled-in chk-col-info" value="Aria-hidden_state" />
									<label for="md_checkbox_27"> Aria-hidden (state)</label> 
									
									<input type="checkbox" id="md_checkbox_28" class="arial filled-in chk-col-info" value="Aria-invalid_state" />
									<label for="md_checkbox_28"> Aria-invalid (state)</label> 
									
									<input type="checkbox" id="md_checkbox_29" class="arial filled-in chk-col-info" value="Aria-keyshortcuts" />
									<label for="md_checkbox_29"> Aria-keyshortcuts</label> 
									
									<input type="checkbox" id="md_checkbox_30" class="arial filled-in chk-col-info" value="Aria-label" />
									<label for="md_checkbox_30"> Aria-label</label> 
									
									<input type="checkbox" id="md_checkbox31" class="arial filled-in chk-col-info" value="Aria-labelledby" />
									<label for="md_checkbox_31"> Aria-labelledby</label> 
									
									<input type="checkbox" id="md_checkbox_32" class="arial filled-in chk-col-info" value="Aria-live" />
									<label for="md_checkbox_32"> Aria-live</label> 
									
									<input type="checkbox" id="md_checkbox_33" class="arial filled-in chk-col-info" value="Aria-owns" />
									<label for="md_checkbox_33"> Aria-owns</label> 
									
									<input type="checkbox" id="md_checkbox_34" class="arial filled-in chk-col-info" value="Aria-relevant" />
									<label for="md_checkbox_34"> Aria-relevant</label> 
									
									<input type="checkbox" id="md_checkbox_35" class="arial filled-in chk-col-info" value="Aria-roledescription" />
									<label for="md_checkbox_35"> Aria-roledescription</label> 
								</div>
							</div>
						</div>
					</div>
					<textarea id="H" class="col-md-3" > HTML
			
		</textarea>

					<textarea id="C" class="col-md-3" > CSS

		</textarea>

					<textarea id="J" class="col-md-3" > JS
    
		</textarea>
				</div>
			</div>
		</div>
</body>


</html>
