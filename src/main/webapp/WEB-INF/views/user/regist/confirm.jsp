<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../res/css/user/login.css?ver=1">
<link rel="stylesheet" type="text/css"
	href="../../res/css/common/login.css?ver=1">
<title>성공회대 학사 시스템</title>
</head>
<body>
	<div class="wrap text-center">
		<div class="outer">
			<div class="inner">
				<div class="centered">
					<form class="form-inline" action="confirm" method="get">
						<div>
							<img src="../../res/image/regist_logo.png"
								class="img-responsive center-block" alt="Responsive image" />
						</div>
						<div class="title">OTP 인증</div>
						<div class="mt-10 mb-10">
							<div class="input-group">
								<div class="input-group-addon">인증코드</div>
								<input type="text" class="form-control" name="confirmCode">
							</div>
							<a href="login.jsp"><button type="submit"
									class="btn btn-info">인증</button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>