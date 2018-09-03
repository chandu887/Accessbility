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
	
	$(document).ready(function() {
		$("#HDiv").attr('style', "display: none");
		$("#CDiv").attr('style', "display: none");
		$("#JDiv").attr('style', "display: none");
		//$("#elementdiv").attr('style',"display: none");

		$('.arial').on('change', function() {
			$('.arial').not(this).prop('checked', false);
			$('#H').html($(this).val());
			if ($(this).is(":checked")) {
				$("#HDiv").attr('style', "display: true");
				$('#H').html($(this).val() + "  --- html");
				$("#CDiv").attr('style', "display: true");
				$('#C').html($(this).val() + "  ---css");
				$("#JDiv").attr('style', "display: true");
				$('#J').html($(this).val() + "  ---js");
			}

			else {
				$("#HDiv").attr('style', "display: none");
				$("#CDiv").attr('style', "display: none");
				$("#JDiv").attr('style', "display: none");
			}
		});
	});

	function myFunction() {
		var input, filter, ul, li, a, i;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		ul = document.getElementById("mylist");
		li = ul.getElementsByTagName("li");
		for (i = 0; i < li.length; i++) {
			a = li[i].getElementsByTagName("label")[0];
			if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
				li[i].style.display = "";
			} else {
				li[i].style.display = "none";
			}
		}
	}

	function modeldata(id) {
		var modeldiv = $('#modalcontent');
		//	modeldiv.empty();
		modeldiv.append(id + "--content");
		var modaltitle = $('#exampleModalLongTitle');
		modaltitle.empty();
		modaltitle.append(id);
	}
</script>
</head>

<body>
	<%@include file="inside.jsp"%>
	<!-- Start wrapper-->
	<div id="wrapper">
		<div class="clearfix"></div>

		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row textarearow">
					<div class="col-md-3">
						<div class="card mt-30">
							<div class="card-header text-uppercase">
								WCAG ARIA FILTER <input id="myInput" type="text" name="search"
									placeholder="Search.." onkeyup="myFunction()">
							</div>
							<div class="card-body">
								<div class="demo-checkbox"
									style="height: 250px; overflow: auto; margin-left: -36px;">
									<ul id="mylist">
										<li><input type="checkbox" id="md_checkbox_15"
											class="arial filled-in chk-col-primary" value="Aria-expanded" />
											<label for="md_checkbox_15"> aria-expanded <a href="#"
												data-toggle="modal" id="aria-expanded"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_15"
											class="arial filled-in chk-col-primary" value="Arial-pressed" />
											<label for="md_checkbox_15"> aria-pressed <a href="#"
												data-toggle="modal" id="aria-pressed"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_15"
											class="arial filled-in chk-col-primary" value="Arial-atomic" />
											<label for="md_checkbox_15"> aria-atomic <a href="#"
												data-toggle="modal" id="aria-atomic"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_16"
											class="arial filled-in chk-col-success"	value="Aria-busy_state" /> 
											<label for="md_checkbox_16">aria-busy (state) <a href="#" data-toggle="modal"
												id="aria-busy" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_17"
											class="arial filled-in chk-col-info" value="Arial-controls" />
											<label for="md_checkbox_17"> aria-controls <a href="#" data-toggle="modal"
												id="aria-controls" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value=" Dynamic aria-current = step " />
											<label for="md_checkbox_18"> Dynamic aria-current ="step"<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content=" Dynamic aria-current =step --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value="Static aria-current=step" />
											<label for="md_checkbox_18"> Static aria-current="step" <a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Static aria-current=step --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value="Arial-current=time" />
											<label for="md_checkbox_18"> aria-current ="time"<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-current=time --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value="Arial-current=true" />
											<label for="md_checkbox_18"> aria-current="true"<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value="Arial-current=date" />
											<label for="md_checkbox_18"> aria-current="date"<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_19"
											class="arial filled-in chk-col-primary"
											value="Aria-describedby" /> <label for="md_checkbox_19">
												aria-describedby<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_20"
											class="arial filled-in chk-col-success" value="Aria-details" />
											<label for="md_checkbox_20"> aria-details<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_21"
											class="arial filled-in chk-col-info" value="Aria-disabled=copy" />
											<label for="md_checkbox_21"> aria-disabled="copy" <a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_21"
											class="arial filled-in chk-col-info" value="Aria-disabled=move" />
											<label for="md_checkbox_21"> aria-disabled="move" <a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_21"
											class="arial filled-in chk-col-info" value="Aria-disabled=link" />
											<label for="md_checkbox_21"> aria-disabled="link" <a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_21"
											class="arial filled-in chk-col-info" value="Aria-disabled=none" />
											<label for="md_checkbox_21"> aria-disabled="none" <a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_22"
											class="arial filled-in chk-col-info" value="Aria-dropeffect" />
											<label for="md_checkbox_22"> aria-dropeffect<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_23"
											class="arial filled-in chk-col-info"
											value="Aria-errormessage" /> <label for="md_checkbox_23">
												aria-errormessage<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_24"
											class="arial filled-in chk-col-info" value="Aria-flowto" />
											<label for="md_checkbox_24"> aria-flowto<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_25"
											class="arial filled-in chk-col-info"
											value="Aria-grabbed_state" /> <label for="md_checkbox_25">
												aria-grabbed (state)<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_26"
											class="arial filled-in chk-col-info" value="Aria-haspopup" />
											<label for="md_checkbox_26"> aria-haspopup<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_27"
											class="arial filled-in chk-col-info"
											value="Aria-hidden_state" /> <label for="md_checkbox_27">
												aria-hidden (state)<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_28"
											class="arial filled-in chk-col-info"
											value="Aria-invalid_state" /> <label for="md_checkbox_28">
												aria-invalid (state)<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_29"
											class="arial filled-in chk-col-info"
											value="Aria-keyshortcuts" /> <label for="md_checkbox_29">
												aria-keyshortcuts<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_30"
											class="arial filled-in chk-col-info" value="Aria-label" /> <label
											for="md_checkbox_30"> aria-label<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox31"
											class="arial filled-in chk-col-info" value="Aria-labelledby" />
											<label for="md_checkbox_31"> aria-labelledby<a
												href="#" title="Header" data-toggle="popover"
												data-placement="top" data-content="Arial-atomic --- Content">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_32"
											class="arial filled-in chk-col-info" value="Aria-live" /> <label
											for="md_checkbox_32"> aria-live<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_33"
											class="arial filled-in chk-col-info" value="Aria-owns" /> <label
											for="md_checkbox_33"> aria-owns<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_34"
											class="arial filled-in chk-col-info" value="Aria-relevant" />
											<label for="md_checkbox_34"> aria-relevant<a href="#"
												title="Header" data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_35"
											class="arial filled-in chk-col-info"
											value="Aria-roledescription" /> <label for="md_checkbox_35">
												aria-roledescription<a href="#" title="Header"
												data-toggle="popover" data-placement="top"
												data-content="Arial-atomic --- Content"> <img alt="help"
													src="assets/images/help.png">
											</a>
										</label></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					
					<div class="textpanel col-md-3" id="HDiv">
						<div class="topbar">
							<div class="container-fluid">
								<div class="row">
									<!-- social icon-->
									<div class="col-sm-12">
										<div class="btn-group setting">
											<button type="button" class="btn btn-default">
												<span class="fa fa-cog"></span>
											</button>
										</div>
										<h5 class="texttitle">HTML</h5>
										<ul class="social-network">
											<div class="btn-group">
												<button type="button" class="btn btn-default downarrow" data-toggle="dropdown">
											    	<span class="fa fa-chevron-down"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
											    	<li><a href="#">Action</a></li>
											    	<li><a href="#">Another action</a></li>
											    	<li><a href="#">Something else here</a></li>
											    	<li><a href="#">Separated link</a></li>
												</ul>
											</div>
										</ul>
									</div>

								</div>
							</div>
						</div>
						<textarea id="H">    
							<div class="container">
								<h2>Button Styles</h2>
								<button type="button" class="btn">Basic</button>
								<button type="button" class="btn btn-default">Default</button>
								<button type="button" class="btn btn-primary">Primary</button>
								<button type="button" class="btn btn-success">Success</button>
								<button type="button" class="btn btn-info">Info</button>
								<button type="button" class="btn btn-warning">Warning</button>
								<button type="button" class="btn btn-danger">Danger</button>
								<button type="button" class="btn btn-link">Link</button>      
							</div>
						</textarea>
					</div>
					<div class="textpanel col-md-3" id="CDiv">
						<div class="topbar">
							<div class="container-fluid">
								<div class="row">
									<!-- social icon-->
									<div class="col-sm-12">
										<div class="btn-group setting">
											<button type="button" class="btn btn-default">
												<span class="fa fa-cog"></span>
											</button>
										</div>
										<h5 class="texttitle">CSS</h5>
										<ul class="social-network">
											<div class="btn-group">
										        <button type="button" class="btn btn-default downarrow" data-toggle="dropdown">
										            <span class="fa fa-chevron-down"></span>
										        </button>
										        <ul class="dropdown-menu" role="menu">
										            <li><a href="#">Action</a></li>
										            <li><a href="#">Another action</a></li>
										            <li><a href="#">Something else here</a></li>
										            <li><a href="#">Separated link</a></li>
										        </ul>
										    </div>
										</ul>
									</div>

								</div>
							</div>
						</div>
						<textarea id="C"> 
						</textarea>
					</div>
					<div class="textpanel col-md-3" id="JDiv">
						<div class="topbar">
							<div class="container-fluid">
								<div class="row">
									<!-- social icon-->
									<div class="col-sm-12">
										<div class="btn-group setting">
											<button type="button" class="btn btn-default">
												<span class="fa fa-cog"></span>
											</button>
										</div>
										<h5 class="texttitle">JS</h5>
										<ul class="social-network">
											<div class="btn-group">
										        <button type="button" class="btn btn-default downarrow" data-toggle="dropdown">
										            <span class="fa fa-chevron-down"></span>
										        </button>
										        <ul class="dropdown-menu" role="menu">
										            <li><a href="#">Action</a></li>
										            <li><a href="#">Another action</a></li>
										            <li><a href="#">Something else here</a></li>
										            <li><a href="#">Separated link</a></li>
										        </ul>
										    </div>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<textarea id="J">    
							JS is not required
						</textarea>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Modal -->


	<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="height: 300px; overflow: auto;"
					id="modalcontent"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>


</html>
