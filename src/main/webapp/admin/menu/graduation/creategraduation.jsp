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
	href="../../../res/css/common/main.css?ver=1">
<link rel="stylesheet" type="text/css"
	href="../../../res/css/admin/creategraduation.css?ver=1">
<link rel="stylesheet" type="text/css"
	href="../../../res/css/common/form.css?ver=1">
<script type="text/javascript"
	src="../../../res/script/admin/creategraduation.js?ver=1"></script>
<title>SKHU 졸업관리</title>
</head>

<body>
	<jsp:include page="../header.jsp" flush="true"></jsp:include>
	<main>
	<div class="container">
		<div id="header" class="panel panel-default">
			<div class="panel-body">
				<h3 class="text-center">졸업요건 생성</h3>
				<select name="department" class="option" id="show-form">
					<option value="0">선택</option>
					<option value="1">학점</option>
					<option value="2">과목</option>
					<option value="3">엑셀 파일 업로드</option>
				</select>
				<form class="form-horizontal mb-25 mt-25 create-grade">
					<div class="form-group">
						<label class="col-sm-2 control-label">적용학번</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="number" name="year" class="form-control">
						</div>
					</div>
					<div class="form-group mb-50">
						<label class="col-sm-2 control-label">적용학과</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<select name="department" class="form-control">
								<option value="1">소프트웨어공학과</option>
								<option value="2">컴퓨터공학과</option>
								<option value="3">영어학과</option>
								<option value="4">중국어학과</option>
							</select>
						</div>
					</div>
					<div class="form-group mb-50">
						<label class="col-sm-2 control-label">졸업요건명</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<select name="department" class="form-control">
								<option value="1">주전공</option>
								<option value="2">부전공</option>
								<option value="3">전공기초</option>
								<option value="4">전공심화</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">학점명</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="text" name="gradeName" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">학점</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="number" name="score" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">비고</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="text" name="note" class="form-control">
						</div>
					</div>
					<button type="submit"
						class="btn btn-info mb-25 col-md-2 col-md-offset-5">확인</button>
				</form>
				<form class="form-horizontal mb-25 mt-25 create-subject">
					<div class="form-group">
						<label class="col-sm-2 control-label">적용학번</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="number" name="year" class="form-control">
						</div>
					</div>
					<div class="form-group mb-50">
						<label class="col-sm-2 control-label">적용학과</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<select name="department" class="form-control">
								<option value="1">소프트웨어공학과</option>
								<option value="2">컴퓨터공학과</option>
								<option value="3">영어학과</option>
								<option value="4">중국어학과</option>
							</select>
						</div>
					</div>
					<div class="form-group mb-50">
						<label class="col-sm-2 control-label">졸업요건명</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<select name="department" class="form-control">
								<option value="1">주전공</option>
								<option value="2">부전공</option>
								<option value="3">전공기초</option>
								<option value="4">전공심화</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">과목코드</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="text" name="subjectCode" class="form-control">
						</div>
					</div>
					<div class="form-group mb-50">
						<label class="col-sm-2 control-label">학기</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<select name="department" class="form-control">
								<option value="0">상관없음</option>
								<option value="1">1학기</option>
								<option value="2">2학기</option>
								<option value="2">3학기</option>
								<option value="2">4학기</option>
								<option value="2">5학기</option>
								<option value="2">6학기</option>
								<option value="2">7학기</option>
								<option value="2">8학기</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">비고</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="text" name="note" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">필수</label>
						<div class="mb-25 col-md-4 col-md-offset-2">
							<input type="checkbox" name="essential" />
						</div>
					</div>
					<button type="submit"
						class="btn btn-info mb-25 col-md-2 col-md-offset-5">확인</button>
				</form>
				<form method="post" enctype="multipart/form-data"
					class="create-upload">
					<div class="form-group">
					<hr/>
						<label>양식</label><br/>
						<a href="/" download="양식">다운로드</a>
						<hr/>
						<label>파일</label>
						<input type="file" class="form-control form-width form-height"
							name="scoreFile" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">
							<i class="glyphicon glyphicon-ok"></i>저장
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</main>
	<footer> </footer>
</body>
</html>

