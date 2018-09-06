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
			if ($(this).is(":checked")) {
				$("#HDiv").attr('style', "display: true");
				$("#CDiv").attr('style', "display: true");
				$("#JDiv").attr('style', "display: true");
				if($(this).val() == "Aria-busy_state"){
					$('#H').html('Before first click:  <div aria-live="polite"> <button>Toggle details</button> </div> After first click, while data is loading: <div aria-live="polite" aria-busy="true"> <button aria-controls="details" aria-expanded="false">Toggle details</button>  <div id="details"></div> </div>');
				} else if($(this).val() == "Arial-controls") {
					$('#H').html('Create button in below formate -  Before first click: <div aria-live="polite">     <button>Toggle details</button> </div> After first click, while data is loading: <div aria-live="polite" aria-busy="true">     <button aria-controls="details" aria-expanded="false">Toggle details</button>     <div id="details"></div> </div> After the data is loaded: <div aria-live="polite" aria-busy="false">     <button aria-controls="details" aria-expanded="true">Toggle details</button>     <div id="details">Some data</div> </div> After second click: <div aria-live="polite" aria-busy="false">     <button aria-controls="details" aria-expanded="false">Toggle details</button>     <div id="details" style="display: none;">Some data</div> </div> ');
				} else if($(this).val() == "Arial-current-time") {
					$('#H').html('<ul>  <li><button>9am to 10am: Welcome</li>  <li><button aria-current="time" aria-pressed="true">10am to 11am: Keynote</button></li>  <li><button aria-pressed="false">11am to 11.30pm: Break</button></li>  <li><button aria-pressed="false">11.30am to 1pm: Workshop</button></li>  <li><button aria-pressed="false">1pm to 2pm: Lunch</button></li>  <li><button aria-pressed="false">2pm to 3pm: Lecture</button></li>  <li><button aria-pressed="false">3pm to 3.30pm: Break</button></li>  <li><button aria-pressed="false">3.30pm to 5pm: Workshop</button></li>  </ul>');
				} else if($(this).val() == "Arial-current-true") {
					$('#H').html('<ul> <li><button>9am to 10am: Welcome</li> <li><button aria-current="true">10am to 11am: Keynote</button></li> <li><button>11am to 11.30pm: Break</button></li> <li><button>11.30am to 1pm: Workshop</button></li> <li><button>1pm to 2pm: Lunch</button></li> <li><button>2pm to 3pm: Lecture</button></li> <li><button>3pm to 3.30pm: Break</button></li> <li><button>3.30pm to 5pm: Workshop</button></li> </ul>');
				} else if($(this).val() == "Arial-current-date") {
					$('#H').html('<ul> <li><button>Current Month August- year 2017</li> <li><button aria-current="Date" aria-pressed="true">1</button></li> <li><button aria-current="Date" aria-pressed="false">2</button></li> <li><button aria-current="Date" aria-pressed="false">3</button></li> <li><button aria-current="Date" aria-pressed="false">4</button></li> <li><button aria-current="Date" aria-pressed="false">5</button></li> <li><button aria-current="Date" aria-pressed="false">6</button></li> <li><button aria-current="Date" aria-pressed="false">7</button></li> </ul>');
				} else if($(this).val() == "Aria-describedby") {
					$('#H').html('<button aria-label="Close" aria-describedby="descriptionClose" onclick="myDialog.close()">X</button> For below div content must be hide through CSS, <div id="descriptionClose">Closing this window will discard any information entered and return you back to the main page</div>');
				} else if($(this).val() == "Aria-details") {
					$('#H').html('<button id="save_continue" class="btn app_button" aria-details="det">SAVE and CONTINUE</button> <p> See an <a href="#" id="det">Application of the product ordering</a>.</p>');
				} else if($(this).val() == "Aria-hidden") {
					$('#H').html('<button class="btn disabled" aria-disabled="true" tabindex="-1" aria-hidden="true">SAVE  and CONTINUE</button>');
				} else if($(this).val() == "Aria-label") {
					$('#H').html('<button aria-label="Download high definition movie">	Download </button>');
				} else if($(this).val() == "Aria-labelledby") {
					$('#H').html('<button aria-labelledby="info3"> Save </button> <p id="info3" class="hidden"> search queries and return to main menu </p>');
				} else if($(this).val() == "Aria-roledescription") {
					$('#H').html('<button role="button" aria-roledescription="attachment button">family_reunion.jpg</button>');
				} else {
					$('#H').empty();
				}
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
		modeldiv.empty();
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
										<li><input type="checkbox" id="md_checkbox_9"
											class="arial filled-in chk-col-primary" value="Aria-expanded" />
											<label for="md_checkbox_9"> aria-expanded <a href="#"
												data-toggle="modal" id="aria-expanded"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_10"
											class="arial filled-in chk-col-primary" value="Arial-pressed" />
											<label for="md_checkbox_10"> aria-pressed <a href="#"
												data-toggle="modal" id="aria-pressed"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_11"
											class="arial filled-in chk-col-primary" value="Arial-atomic" />
											<label for="md_checkbox_11"> aria-atomic <a href="#"
												data-toggle="modal" id="aria-atomic"
												data-target="#exampleModalLong" onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_12"
											class="arial filled-in chk-col-success"	value="Aria-busy_state" /> 
											<label for="md_checkbox_12">aria-busy (state) <a href="#" data-toggle="modal"
												id="aria-busy" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_13"
											class="arial filled-in chk-col-info" value="Arial-controls" />
											<label for="md_checkbox_13"> aria-controls <a href="#" data-toggle="modal"
												id="aria-controls" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_14"
											class="arial filled-in chk-col-warning" value=" Dynamic aria-current = step " />
											<label for="md_checkbox_14"> Dynamic aria-current ="step"<a href="#" data-toggle="modal"
												id="dynamic-aria-current" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_15"
											class="arial filled-in chk-col-warning" value="Static aria-current=step" />
											<label for="md_checkbox_15"> Static aria-current="step" <a href="#" data-toggle="modal"
												id="static-aria-current" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_16"
											class="arial filled-in chk-col-warning" value="Arial-current-time" />
											<label for="md_checkbox_16"> aria-current ="time"<a href="#" data-toggle="modal"
												id="aria-current-time" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_17"
											class="arial filled-in chk-col-warning" value="Arial-current-true" />
											<label for="md_checkbox_17"> aria-current="true"<a href="#" data-toggle="modal"
												id="aria-current-true" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_18"
											class="arial filled-in chk-col-warning" value="Arial-current-date" />
											<label for="md_checkbox_18"> aria-current="date"<a href="#" data-toggle="modal"
												id="aria-current-date" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_19"
											class="arial filled-in chk-col-primary"	value="Aria-describedby" /> 
											<label for="md_checkbox_19"> aria-describedby <a href="#" data-toggle="modal"
												id="aria-describedby" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_20"
											class="arial filled-in chk-col-success" value="Aria-details" />
											<label for="md_checkbox_20"> aria-details <a href="#" data-toggle="modal"
												id="aria-details" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_21"
											class="arial filled-in chk-col-info" value="Aria-disabled=copy" />
											<label for="md_checkbox_21"> aria-disabled="copy" <a href="#" data-toggle="modal"
												id="aria-disabled-copy" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_22"
											class="arial filled-in chk-col-info" value="Aria-disabled=move" />
											<label for="md_checkbox_22"> aria-disabled="move" <a href="#" data-toggle="modal"
												id="aria-disabled-move" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_23"
											class="arial filled-in chk-col-info" value="Aria-disabled=link" />
											<label for="md_checkbox_23"> aria-disabled="link" <a href="#" data-toggle="modal"
												id="aria-disabled-link" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_24"
											class="arial filled-in chk-col-info" value="Aria-disabled=none" />
											<label for="md_checkbox_24"> aria-disabled="none" <a href="#" data-toggle="modal"
												id="aria-disabled-none" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_25"
											class="arial filled-in chk-col-info" value="Aria-dropeffect" />
											<label for="md_checkbox_25"> aria-dropeffect <a href="#" data-toggle="modal"
												id="aria-dropeffect" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_26"
											class="arial filled-in chk-col-info" value="Aria-errormessage" /> 
											<label for="md_checkbox_26">aria-errormessage <a href="#" data-toggle="modal"
												id="aria-errormessage" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_27"
											class="arial filled-in chk-col-info" value="Aria-flowto" />
											<label for="md_checkbox_27"> aria-flowto<a href="#" data-toggle="modal"
												id="aria-flowto" data-target="#exampleModalLong"
												onclick="modeldata(this.id)"> 
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_28"
											class="arial filled-in chk-col-info" value="Aria-grabbed_state" /> 
											<label for="md_checkbox_28">aria-grabbed (state) <a href="#" data-toggle="modal"
												id="aria-grabbed" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_29"
											class="arial filled-in chk-col-info" value="Aria-haspopup" />
											<label for="md_checkbox_29"> aria-haspopup <a href="#" data-toggle="modal"
												id="aria-haspopup" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_30"
											class="arial filled-in chk-col-info" value="Aria-hidden_state" /> <label for="md_checkbox_30">
												aria-hidden (state)<a href="#" data-toggle="modal"
												id="aria-hidden" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												 <img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_31"
											class="arial filled-in chk-col-info"
											value="Aria-invalid_state" /> <label for="md_checkbox_31">
												aria-invalid (state) <a href="#" data-toggle="modal"
												id="aria-invalid" data-target="#exampleModalLong"
												onclick="modeldata(this.id)"> 
												<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_32"
											class="arial filled-in chk-col-info"
											value="Aria-keyshortcuts" /> <label for="md_checkbox_32">
												aria-keyshortcuts<a href="#" data-toggle="modal"
												id="aria-keyshortcuts" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_33"
											class="arial filled-in chk-col-info" value="Aria-label" /> <label
											for="md_checkbox_33"> aria-label <a href="#" data-toggle="modal"
												id="aria-label" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_34"
											class="arial filled-in chk-col-info" value="Aria-labelledby" />
											<label for="md_checkbox_34"> aria-labelledby <a href="#" data-toggle="modal"
												id="aria-lablledby" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
													<img alt="help" src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_35"
											class="arial filled-in chk-col-info" value="Aria-live" /> <label
											for="md_checkbox_35"> aria-live <a href="#" data-toggle="modal"
												id="aria-live" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_36"
											class="arial filled-in chk-col-info" value="Aria-owns" /> <label
											for="md_checkbox_36"> aria-owns <a href="#" data-toggle="modal"
												id="aria-owns" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_37"
											class="arial filled-in chk-col-info" value="Aria-relevant" />
											<label for="md_checkbox_37"> aria-relevant <a href="#" data-toggle="modal"
												id="aria-relevant" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help"	src="assets/images/help.png">
											</a>
										</label></li>
										<li><input type="checkbox" id="md_checkbox_38"
											class="arial filled-in chk-col-info"
											value="Aria-roledescription" /> <label for="md_checkbox_38">
												aria-roledescription <a href="#" data-toggle="modal"
												id="aria-roledescription" data-target="#exampleModalLong"
												onclick="modeldata(this.id)">
												<img alt="help" src="assets/images/help.png">
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
						<textarea id="J"></textarea>
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
