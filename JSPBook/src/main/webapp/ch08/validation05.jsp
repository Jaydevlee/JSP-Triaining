<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
	<script type="text/javascript">
		function checkMember() {
			let regExpId=/^(?=.*[a-zA-Z])(?=.*\d)[a-z|A-Z\d]{5,20}$/;
			let regExpName=/^[가=힣]*$/;
			let regExpPw=/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!.@#$%^&*])[a-z|A-Z\d!@#$%^&*]{7,20}$/;
			let regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
			let regExpEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			
			let form=document.member;
			
			let id=form.id.value;
			let pw=form.pw.value;
			let name=form.name.value;
			let phone=form.phone1.value +"-"+form.phone2.value+"-"+form.phone3.value;
			let email=form.email.value;
			
			if(!regExpId.test(id)){
				alert("아이디는 영문자와 숫자포함 5자이상 20자 이내여야 합니다.")
				form.id.select();
				return false;
			}
			if(!regExpPw.test(pw)){
				alert("PW는 영문자와 숫자, 특수문자를 포함한 7자이상 20자 이내여야 합니다.")
				form.pw.select();
				return false;
			}
			if(!regExpName.test(name)){
				alert("이름은 한글만 입력가능 합니다.")
				form.name.select();
				return false;
			}
			if(!regExpPhone.test(phone)){
				alert("연락처 양식이 올바르지 않습니다.")
				form.phone1.select();
				return false;
			}
			if(!regExpEmail.test(email)){
				alert("이메일 양식을 확인해주세요.")
				form.email.select();
				return false;
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
		<p><input type="submit" value="전송" onclick="return checkMember()"></p>
	</form>
</body>
</html>