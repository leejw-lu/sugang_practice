function login() {
    var id=document.querySelector('#id');
    var password=document.querySelector('#password');

    if(id.value==""){
        alert("아이디를 입력하여 주세요.")
    }
    else if (password.value==""){
        alert("비밀번호를 입력하여 주세요.")
    }
    else{
        location.href="sugang";
    }
}