
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">
<%@ include file = "header.jsp" %>
<link href="resources/css/checkoutcss.css" rel="stylesheet">
    <title>checkout</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    
.panel.with-nav-tabs .panel-heading{
    padding: 5px 5px 0 5px;
}
.panel.with-nav-tabs .nav-tabs{
	border-bottom: none;
}
.panel.with-nav-tabs .nav-justified{
	margin-bottom: -1px;
}
/********************************************************************/
/*** PANEL SUCCESS ***/
.with-nav-tabs.panel-success .nav-tabs > li > a,
.with-nav-tabs.panel-success .nav-tabs > li > a:hover,
.with-nav-tabs.panel-success .nav-tabs > li > a:focus {
	color: #3c763d;
}
.with-nav-tabs.panel-success .nav-tabs > .open > a,
.with-nav-tabs.panel-success .nav-tabs > .open > a:hover,
.with-nav-tabs.panel-success .nav-tabs > .open > a:focus,
.with-nav-tabs.panel-success .nav-tabs > li > a:hover,
.with-nav-tabs.panel-success .nav-tabs > li > a:focus {
	color: #3c763d;
	background-color: #d6e9c6;
	border-color: transparent;
}
.with-nav-tabs.panel-success .nav-tabs > li.active > a,
.with-nav-tabs.panel-success .nav-tabs > li.active > a:hover,
.with-nav-tabs.panel-success .nav-tabs > li.active > a:focus {
	color: #3c763d;
	background-color: #fff;
	border-color: #d6e9c6;
	border-bottom-color: transparent;
}
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu {
    background-color: #dff0d8;
    border-color: #d6e9c6;
}
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > li > a {
    color: #3c763d;   
}
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
    background-color: #d6e9c6;
}
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > .active > a,
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
.with-nav-tabs.panel-success .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #3c763d;
}


.panel-title {display: inline;font-weight: bold;}
.checkbox.pull-right { margin: 0; }
.pl-ziro { padding-left: 0px; }
    </style>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<body>
	<div class="container" style="margin-top:40pt; width:4000px;  ">
   
    <div class="row">
  
		<div class="col-md-6">
            <div class="panel with-nav-tabs panel-success">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1success" data-toggle="tab">Address</a></li>
                            <li><a href="#tab2success" data-toggle="tab">Select payment method</a></li>
                            <li><a href="#tab3success" data-toggle="tab">Payment</a></li>
                              <li><a href="#tab4success" data-toggle="tab">Place order</a></li>
                        </ul>
                </div>
					<div class="panel-body">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab1success">
								<div class="row">
									<div class="col-md-4 col-md-offset-4">
										<form class="form-horizontal" role="form">
											<fieldset>

												<!-- Form Name -->
												<legend>Address Details</legend>

												<!-- Text input-->
												<div class="form-group">
													<label class="col-sm-2 control-label" for="textinput">Line
														1</label>
													<div class="col-sm-10">
														<input type="text" placeholder="Address Line 1"
															class="form-control">
													</div>
												</div>

												<!-- Text input-->
												<div class="form-group">
													<label class="col-sm-2 control-label" for="textinput">Line
														2</label>
													<div class="col-sm-10">
														<input type="text" placeholder="Address Line 2"
															class="form-control">
													</div>
												</div>

												<!-- Text input-->
												<div class="form-group">
													<label class="col-sm-2 control-label" for="textinput">City</label>
													<div class="col-sm-10">
														<input type="text" placeholder="City" class="form-control">
													</div>
												</div>

												<!-- Text input-->
												<div class="form-group">
													<label class="col-sm-2 control-label" for="textinput">State</label>
													<div class="col-sm-4">
														<input type="text" placeholder="State"
															class="form-control">
													</div>

													<label class="col-sm-2 control-label" for="textinput">Postcode</label>
													<div class="col-sm-4">
														<input type="text" placeholder="Post Code"
															class="form-control">
													</div>
												</div>



												<!-- Text input-->
												<div class="form-group">
													<label class="col-sm-2 control-label" for="textinput">Country</label>
													<div class="col-sm-10">
														<input type="text" placeholder="Country"
															class="form-control">
													</div>
												</div>

												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-10">
														<div class="pull-right">
															<button type="submit" class="btn btn-default">Cancel</button>
															<button type="submit" class="btn btn-primary">Save</button>
														</div>
													</div>
												</div>

											</fieldset>
										</form>
									</div>
									<!-- /.col-lg-12 -->
								</div>
								<!-- /.row -->
							</div>
							<div class="tab-pane fade" id="tab2success">
<div class="col-md-4">
<div class="col-md-6">
     <h4>Radio Buttons</h4>

    <div class="funkyradio">
        <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio1" />
            <label for="radio1">Credit / Debit / ATM</label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio2" checked/>
            <label for="radio2">Net Banking</label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio3" />
            <label for="radio3">Cash on deliver</label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio4" />
            <label for="radio4">EMI (Easy Installments)</label>
        </div>
    </div>
     
</div>
<div class="btn btn-success">
        <button type="submit">continue</button>
        </div>
</div></div>
							<div class="tab-pane fade" id="tab3success"><div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                    <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    EXPIRY DATE</label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span class="glyphicon glyphicon-usd"></span>4200</span> Final Payment</a>
                </li>
            </ul>
            <br/>
            <a href="http://www.jquery2dotnet.com" class="btn btn-success btn-lg btn-block" role="button">Pay</a>
        </div>
    </div>
</div>
							</div>
							<div class="tab-pane fade" id="tab4success">Success 4</div>
							<div class="tab-pane fade" id="tab5success">Success 5</div>
						</div>
					</div>
				</div>
        </div>
        
	</div>
</div>
<br/>
	<script type="text/javascript">
	
	</script>
</body>
</html>
