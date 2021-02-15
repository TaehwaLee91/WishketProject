package wishket.spring.mvc.vo;

public class MemberVO {
    private String mno;
    private String userid;
    private String email;
    private String passwd;
    private String regdate;

    public MemberVO() {
    }

    public MemberVO(String mno, String userid, String email, String passwd, String regdate) {
        this.mno = mno;
        this.userid = userid;
        this.email = email;
        this.passwd = passwd;
        this.regdate = regdate;
    }

    public String getMno() {
        return mno;
    }

    public void setMno(String mno) {
        this.mno = mno;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }
}
