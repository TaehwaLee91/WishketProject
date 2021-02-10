<%@ page pageEncoding="UTF-8" %>
<div id="loginmodal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">
                    <i class="bi bi-person"></i>  로그인
                </h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">
                    <i class="bi bi-x"></i>
                </button>
            </div>
            <div class="modal-body">
                <form id="loginFrm">
                    <div class="form-group row text-center">
                        <label for="login_userid" class="col-4">아이디</label>
                        <input type="text" id="login_userid" name="userid" class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <label for="login_passwd" class="col-4">비밀번호</label>
                        <input type="password" id="login_passwd" name="passwd" class="form-control col-6">
                    </div>
                    <div class="form-group row">
                        <div class="col-4"></div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label">로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button class="btn btn-success" id="loginBtn" type="button">로그인</button>
                <button class="btn btn-warning" type="button">아이디/비밀번호찾기</button>
            </div>
        </div>
    </div>
</div>