<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
	<script type="text/javascript">
		function checkMember() {
			let regExpId=/[a-zA-Z0-9]/;;
			let regExpName=/^[가=힣]*$/;
			let regExpPw=/^(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/;
			let regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
			let regExpEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			
			let form=document.member;
			
			let id=form.id.value;
			let pw=form.pw.value;
			let name=form.name.value;
			let phone=form.phone1.value +"-"+form.phone2.value+"-"+form.phone3.value;
			let email=form.email.value;
			
			if(!regExmid.test(id)){
				alert("아이디는 영대소문자, 숫자로만 입력할 수 있습니다.")
				form.id.select();
				return;
			}
			if(!regExmid.test(pw)){
				alert("비밀번호는 최소 8자리 숫자 특수문자가 1개 이상 포함되어야 합니다.")
				form.id.select();
				return;
			}
			if(!regExmid.test(name)){
				alert("이름은 한글만 입력가능 합니다.")
				form.id.select();
				return;
			}
			if(!regExmid.test(id)){
				alert("연락처 양식이 올바르지 않습니다.")
				form.id.select();
				return;
			}
			if(!regExmid.test(id)){
				alert("이메일 양식을 확인해주세요.")
				form.id.select();
				return;
			}
				form.submit();
			}
			
	</script>
</head>
<body>
	<form name="member" action="validation05_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="password" name="pw"></p>
		<p> 이름 : <input type="text" name="name"></p>
		<p>
				연락처: <select name="phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
							</select>-<input type="text" maxlength="4" size="4" name="phone2">
							-<input type="text" maxlength="4" size="4" name="phone3">
		</p>
		<p> 이메일 : <input type="text" name="email"></p>
		<p><input type="submit" value="전송" onclick="checkMember()"></p>
	</form>
</body>
</html>