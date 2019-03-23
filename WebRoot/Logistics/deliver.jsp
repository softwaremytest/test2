<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发货</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- 引入外部样式 -->
<link rel="stylesheet" type="text/css" href="../css/test1.css" />
<link rel="stylesheet" type="text/css" href="../css/test2.css" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
<link href="../css/blog.css" rel="stylesheet">
<link href="../css/blog-comment.css" rel="stylesheet">

<style>
body {
	background: #F5F5F5;
}

a {
	text-decoration: none;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

#but {
	margin: 0;
	padding: 0;
	border: 0px none transparent;
	outline: none;
}

#shu-daohanglan-title {
	font-size: 18px;
	font-weight: bold;
	color: #000000
}

#shu-daohanglan a:hover {
	color: #EE7621;
}
#divDemo {
	width: 1000px;
	height: 100px;
	overflow: hidden;
}
</style>

<!-- 1.引入 echarts.js -->
<script type="text/javascript" src="../echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="../jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script>
	function control(obj) {
		var divDemo = document.getElementById('divDemo');
			divDemo.style.height = 650 + "px";
			divDemo.style.overflow = "hidden";
	}
</script>
</head>
<body>
	<div style="height: 45px;">
		<%@ include file="../components/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components/lo_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../Logistics/deliver.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">物流管理 </a> <a
						href="../Logistics/deliver.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">发货</a> <a
						href="../Logistics/logistic.jsp" class="list-group-item"
						style="color: #000000;">物流信息</a>

				</div>
				<div style="height: 280px"></div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->

				<div>
					<p style="font-size: 18px; font-weight: bold;">发货</p>
				</div>
				<div class="panel-body">
					<p style="color: red">${error}</p>
					<form class="form-horizontal" id="form1" name="form1" method="post"
						action="LoginAction">

						<div class="form-group"
							style="position: relative; top: -10px; background: #ffffff; width: 800px; height: 50px;">
							<div class="col-sm-2" style="width: 150px; left: 0px; top: 8px;">
								<input type="text" class="form-control" id="text1"
									name="OrderId" pattern="" placeholder="订单号">
							</div>
							<div class="col-sm-2"
								style="width: 150px; left: -10px; top: 8px;">
								<input type="text" class="form-control" id="text2"
									name="addressDeliver" pattern="" placeholder="发货地址">
							</div>
							<div class="col-sm-2"
								style="width: 150px; left: -20px; top: 8px;">
								<input type="text" class="form-control" id="text3"
									name="addressReceiving" pattern="" placeholder="收货地址">
							</div>


						</div>
						<div class="form-group"
							style="position: relative; top: -25px; background: #ffffff; width: 800px; height: 50px;">
							<div class="col-sm-2"
								style="width: 100px; left: 0px; top: 15px; height: 10px;">
								<p style="font-size: 15px;">货物类型</p>
							</div>
							<div class="col-sm-2"
								style="width: 150px; left: -20px; top: 8px;">
								<select class="form-control" name="zhou">
									<option value="genera_goods">普通货物</option>
									<option value="electrify_goods">带电货物(如手机、电子表)</option>
									<option value="pureelectrify_goods">纯电商品(如充电宝)</option>
									<option value="liquid_goods">液体货物(如指甲油)</option>
								</select>
							</div>
                            <div class="col-sm-2"
								style="width: 100px; left: 0px; top: 15px; height: 10px;">
								<p style="font-size: 15px;">物流类型</p>
							</div>
							<div class="col-sm-2"
								style="width: 240px; left: -20px; top: 8px;">
								<select class="form-control" name="zhou">
									<option value="genera_goods">芬兰邮政挂号小包</option>
									<option value="electrify_goods">顺丰国际经济小包</option>
									<option value="pureelectrify_goods">新加坡挂号小包</option>
									<option value="liquid_goods">J-NET捷网</option>
									<option value="liquid_goods">e邮宝</option>
								</select>
							</div>
							<div class="col-sm-2"
								style="width: 120px; left: -15px; top: 8px;">
								<button type="submit" class="btn btn-default"
									style="background: #EE2C2C; color: #ffffff">发货</button>
							</div>
						</div>
					</form>
				</div>
				<div style="position: relative; top: -45px;">
					<p style="font-size: 18px; font-weight: bold;">物流方案查询</p>
				</div>
				<div
					style="position: relative; top: -45px; background: #ffffff; width: 800px; height: 150px;">
					<div class="col-sm-2"
						style="width: 100px; left: 0px; top: 15px; height: 10px;">
						<p style="font-size: 15px;">收货地</p>
					</div>
					<div class="col-sm-2" style="width: 200px; left: -20px; top: 8px;">
						<select class="form-control" name="zhou">
							<option value="RU">Russian Federation</option>
							<option value="US">United States</option>
							<option value="ES">Spain</option>
							<option value="FR">France</option>
							<option value="UK">United Kingdom</option>
							<option value="BR">Brazil</option>
							<option value="IL">Israel</option>
							<option value="NL">Netherlands</option>
							<option value="CA">Canada</option>
							<option value="IT">Italy</option>
							<option value="CL">Chile</option>
							<option value="UA">Ukraine</option>
							<option value="PL">Poland</option>
							<option value="AU">Australia</option>
							<option value="DE">Germany</option>
							<option value="BE">Belgium</option>
							<option value="">Country &amp; Territories (A-Z)</option>
							<option value="AF">Afghanistan</option>
							<option value="ALA">Aland Islands</option>
							<option value="AL">Albania</option>
							<option value="GBA">Alderney</option>
							<option value="DZ">Algeria</option>
							<option value="AS">American Samoa</option>
							<option value="AD">Andorra</option>
							<option value="AO">Angola</option>
							<option value="AI">Anguilla</option>
							<option value="AG">Antigua and Barbuda</option>
							<option value="AR">Argentina</option>
							<option value="AM">Armenia</option>
							<option value="AW">Aruba</option>
							<option value="ASC">Ascension Island</option>
							<option value="AU">Australia</option>
							<option value="AT">Austria</option>
							<option value="AZ">Azerbaijan</option>
							<option value="BH">Bahrain</option>
							<option value="GGY">Guernsey</option>
							<option value="BD">Bangladesh</option>
							<option value="BB">Barbados</option>
							<option value="BY">Belarus</option>
							<option value="BE">Belgium</option>
							<option value="BZ">Belize</option>
							<option value="BJ">Benin</option>
							<option value="BM">Bermuda</option>
							<option value="BT">Bhutan</option>
							<option value="BO">Bolivia</option>
							<option value="BA">Bosnia and Herzegovina</option>
							<option value="BW">Botswana</option>
							<option value="BR">Brazil</option>
							<option value="VG">Virgin Islands (British)</option>
							<option value="BG">Bulgaria</option>
							<option value="BF">Burkina Faso</option>
							<option value="BI">Burundi</option>
							<option value="KH">Cambodia</option>
							<option value="CM">Cameroon</option>
							<option value="CA">Canada</option>
							<option value="CV">Cape Verde</option>
							<option value="BQ">Caribbean Netherlands</option>
							<option value="KY">Cayman Islands</option>
							<option value="CF">Central African Republic</option>
							<option value="TD">Chad</option>
							<option value="CL">Chile</option>
							<option value="CX">Christmas Island</option>
							<option value="CC">Cocos (Keeling) Islands</option>
							<option value="CO">Colombia</option>
							<option value="KM">Comoros</option>
							<option value="CK">Cook Islands</option>
							<option value="CR">Costa Rica</option>
							<option value="CI">Cote D&#39;Ivoire</option>
							<option value="HR">Croatia (local name: Hrvatska)</option>
							<option value="CW">Curacao</option>
							<option value="CY">Cyprus</option>
							<option value="CZ">Czech Republic</option>
							<option value="DK">Denmark</option>
							<option value="DJ">Djibouti</option>
							<option value="DM">Dominica</option>
							<option value="DO">Dominican Republic</option>
							<option value="EC">Ecuador</option>
							<option value="EG">Egypt</option>
							<option value="SV">El Salvador</option>
							<option value="GQ">Equatorial Guinea</option>
							<option value="ER">Eritrea</option>
							<option value="EE">Estonia</option>
							<option value="ET">Ethiopia</option>
							<option value="FK">Falkland Islands (Malvinas)</option>
							<option value="FO">Faroe Islands</option>
							<option value="FJ">Fiji</option>
							<option value="FI">Finland</option>
							<option value="FR">France</option>
							<option value="PF">French Polynesia</option>
							<option value="GA">Gabon</option>
							<option value="GM">Gambia</option>
							<option value="GE">Georgia</option>
							<option value="DE">Germany</option>
							<option value="GH">Ghana</option>
							<option value="GI">Gibraltar</option>
							<option value="GR">Greece</option>
							<option value="GL">Greenland</option>
							<option value="GD">Grenada</option>
							<option value="GP">Guadeloupe</option>
							<option value="GU">Guam</option>
							<option value="GT">Guatemala</option>
							<option value="GN">Guinea</option>
							<option value="GW">Guinea-Bissau</option>
							<option value="GY">Guyana</option>
							<option value="GF">French Guiana</option>
							<option value="HT">Haiti</option>
							<option value="HN">Honduras</option>
							<option value="HK">Hong Kong,China</option>
							<option value="HU">Hungary</option>
							<option value="IS">Iceland</option>
							<option value="IN">India</option>
							<option value="ID">Indonesia</option>
							<option value="IQ">Iraq</option>
							<option value="IE">Ireland</option>
							<option value="IL">Israel</option>
							<option value="IT">Italy</option>
							<option value="JM">Jamaica</option>
							<option value="JP">Japan</option>
							<option value="JEY">Jersey</option>
							<option value="JO">Jordan</option>
							<option value="KZ">Kazakhstan</option>
							<option value="KE">Kenya</option>
							<option value="KI">Kiribati</option>
							<option value="KR">Korea</option>
							<option value="KS">Kosovo</option>
							<option value="KW">Kuwait</option>
							<option value="KG">Kyrgyzstan</option>
							<option value="LA">Lao People&#39;s Democratic Republic</option>
							<option value="LV">Latvia</option>
							<option value="LB">Lebanon</option>
							<option value="LS">Lesotho</option>
							<option value="LR">Liberia</option>
							<option value="LY">Libya</option>
							<option value="LI">Liechtenstein</option>
							<option value="LT">Lithuania</option>
							<option value="LU">Luxembourg</option>
							<option value="MO">Macau,China</option>
							<option value="MK">Macedonia</option>
							<option value="MG">Madagascar</option>
							<option value="MW">Malawi</option>
							<option value="MY">Malaysia</option>
							<option value="MV">Maldives</option>
							<option value="ML">Mali</option>
							<option value="MT">Malta</option>
							<option value="MQ">Martinique</option>
							<option value="MR">Mauritania</option>
							<option value="MU">Mauritius</option>
							<option value="YT">Mayotte</option>
							<option value="MX">Mexico</option>
							<option value="FM">Micronesia</option>
							<option value="MC">Monaco</option>
							<option value="MN">Mongolia</option>
							<option value="MNE">Montenegro</option>
							<option value="MS">Montserrat</option>
							<option value="MA">Morocco</option>
							<option value="MZ">Mozambique</option>
							<option value="MM">Myanmar</option>
							<option value="NA">Namibia</option>
							<option value="NR">Nauru</option>
							<option value="BN">Negara Brunei Darussalam</option>
							<option value="NP">Nepal</option>
							<option value="NL">Netherlands</option>
							<option value="AN">Netherlands Antilles</option>
							<option value="NC">New Caledonia</option>
							<option value="NZ">New Zealand</option>
							<option value="NI">Nicaragua</option>
							<option value="NE">Niger</option>
							<option value="NG">Nigeria</option>
							<option value="NU">Niue</option>
							<option value="NF">Norfolk Island</option>
							<option value="MP">Northern Mariana Islands</option>
							<option value="NO">Norway</option>
							<option value="OM">Oman</option>
							<option value="PK">Pakistan</option>
							<option value="PW">Palau</option>
							<option value="PS">Palestine</option>
							<option value="PA">Panama</option>
							<option value="PG">Papua New Guinea</option>
							<option value="PY">Paraguay</option>
							<option value="PE">Peru</option>
							<option value="PH">Philippines</option>
							<option value="PL">Poland</option>
							<option value="PT">Portugal</option>
							<option value="PR">Puerto Rico</option>
							<option value="QA">Qatar</option>
							<option value="MD">Moldova</option>
							<option value="RE">Reunion</option>
							<option value="RO">Romania</option>
							<option value="RU">Russian Federation</option>
							<option value="RW">Rwanda</option>
							<option value="BLM">Saint Barthelemy</option>
							<option value="KN">Saint Kitts and Nevis</option>
							<option value="LC">Saint Lucia</option>
							<option value="MAF">Saint Martin</option>
							<option value="PM">St. Pierre and Miquelon</option>
							<option value="VC">Saint Vincent and the Grenadines</option>
							<option value="WS">Samoa</option>
							<option value="SM">San Marino</option>
							<option value="ST">Sao Tome and Principe</option>
							<option value="SA">Saudi Arabia</option>
							<option value="SN">Senegal</option>
							<option value="SRB">Serbia</option>
							<option value="SC">Seychelles</option>
							<option value="SL">Sierra Leone</option>
							<option value="SG">Singapore</option>
							<option value="SX">Sint Maarten (Netherlands)</option>
							<option value="SK">Slovakia (Slovak Republic)</option>
							<option value="SI">Slovenia</option>
							<option value="SB">Solomon Islands</option>
							<option value="SO">Somalia</option>
							<option value="ZA">South Africa</option>
							<option value="SGS">South Georgia and the South Sandwich Islands</option>
							<option value="SS">South Sudan</option>
							<option value="ES">Spain</option>
							<option value="LK">Sri Lanka</option>
							<option value="SR">Suriname</option>
							<option value="SZ">Swaziland</option>
							<option value="SE">Sweden</option>
							<option value="CH">Switzerland</option>
							<option value="TW">Taiwan,China</option>
							<option value="TJ">Tajikistan</option>
							<option value="TH">Thailand</option>
							<option value="BS">Bahamas</option>
							<option value="ZR">Congo, The Democratic Republic Of The</option>
							<option value="CG">Congo, The Republic of Congo</option>
							<option value="MH">Marshall Islands</option>
							<option value="VA">Vatican City State (Holy See)</option>
							<option value="TLS">Timor-Leste</option>
							<option value="TG">Togo</option>
							<option value="TO">Tonga</option>
							<option value="TT">Trinidad and Tobago</option>
							<option value="TN">Tunisia</option>
							<option value="TR">Turkey</option>
							<option value="TM">Turkmenistan</option>
							<option value="TC">Turks and Caicos Islands</option>
							<option value="TV">Tuvalu</option>
							<option value="VI">Virgin Islands (U.S.)</option>
							<option value="UG">Uganda</option>
							<option value="UA">Ukraine</option>
							<option value="AE">United Arab Emirates</option>
							<option value="UK">United Kingdom</option>
							<option value="TZ">Tanzania</option>
							<option value="US">United States</option>
							<option value="UY">Uruguay</option>
							<option value="UZ">Uzbekistan</option>
							<option value="VU">Vanuatu</option>
							<option value="VE">Venezuela</option>
							<option value="VN">Vietnam</option>
							<option value="WF">Wallis And Futuna Islands</option>
							<option value="YE">Yemen</option>
							<option value="ZM">Zambia</option>
							<option value="EAZ">Zanzibar</option>
							<option value="ZW">Zimbabwe</option>
							<option value="OTHER">Other Country</option>
							<option value="Other">Other Country</option>
						</select>
					</div>
					<div class="col-sm-2"
						style="width: 100px; left: 0px; top: 15px; height: 10px;">
						<p style="font-size: 15px;">发货地</p>
					</div>
					<div class="col-sm-2" style="width: 200px; left: -20px; top: 8px;">
						<select class="form-control" name="zhou">
							<option value="china">China</option>

						</select>
					</div>
					<div class="col-sm-2"
						style="width: 100px; left: -600px; top: 70px; height: 10px;">
						<p style="font-size: 15px;">货物类型</p>
					</div>
					<div class="col-sm-2"
						style="width: 150px; left: -520px; top: 50px;">
						<select class="form-control" name="zhou">
							<option value="genera_goods">普通货物</option>
							<option value="electrify_goods">带电货物(如手机、电子表)</option>
							<option value="pureelectrify_goods">纯电商品(如充电宝)</option>
							<option value="liquid_goods">液体货物(如指甲油)</option>
						</select>
					</div>
					<p
						style="font-size: 15px; width: 100px; left: 260px; top: 25px; height: 10px; position: relative;">货物价值</p>

					<input type="text" class="form-control"
						style="width: 100px; left: 340px; top: 16px; position: relative;"
						name="addressReceiving" pattern="" placeholder="">
					<p
						style="font-size: 15px; width: 100px; left: 460px; top: -10px; height: 10px; position: relative;">美金</p>


					<p
						style="font-size: 15px; width: 150px; left: 10px; top: 20px; height: 10px; position: relative;">包裹信息:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重</p>
					<input type="text" class="form-control"
						style="width: 65px; left: 130px; top: -10px; position: relative;"
						name="addressReceiving" pattern="" placeholder="">
					<p
						style="font-size: 15px; width: 100px; left: 205px; top: -35px; height: 10px; position: relative;">KG</p>

					<input type="text" class="form-control"
						style="width: 65px; left: 290px; top: -64px; position: relative;"
						name="addressReceiving" pattern="" placeholder="">
					<p
						style="font-size: 15px; width: 100px; left: 260px; top: -90px; height: 10px; position: relative;">长</p>
					<p
						style="font-size: 15px; width: 100px; left: 370px; top: -110px; height: 10px; position: relative;">CM</p>
					
					<input type="text" class="form-control"
						style="width: 65px; left: 460px; top: -138px; position: relative;"
						name="addressReceiving" pattern="" placeholder="">
					<p
						style="font-size: 15px; width: 100px; left: 430px; top: -164px; height: 10px; position: relative;">宽</p>
					
					<p
						style="font-size: 15px; width: 100px; left: 546px; top: -184px; height: 10px; position: relative;">CM</p>
					<p
						style="font-size: 15px; width: 150px; left: 600px; top: -203px; height: 10px; position: relative;">高</p>
					<input type="text" class="form-control"
						style="width: 65px; left: 630px; top: -232px; position: relative;"
						name="addressReceiving" pattern="" placeholder="">
					<p
						style="font-size: 15px; width: 100px; left: 710px; top: -258px; height: 10px; position: relative;">CM</p>
				</div>
					
				
				<div id="divDemo" style="left: 0px; top: -40px; position: relative;">
				
				     <input type="button" value="查看物流方案" class="btn btn-default"
								style="color: #fff;background:red;left: 0px; top: 10px; position: relative;" onclick="control(this)" />
					 <p style="font-size: 18px; font-weight: bold;top: 20px; position: relative;">方案查询结果</p>
					  <img src="../img/deliver.jpg" style="width:1000px;left: 0px; top: 30px; position: relative;"/>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components/footer.jsp"%>