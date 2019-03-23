package cc.entityclass;

public class User {
    private String eamil;
    private String password;
    private String phone;
    private String idNum;
    private String realname;
    private String gender;
    private String introduce;
    private String account;
    private String state;
    private String type;
    public User() {
    	super();
    }
    public User(String eamil,String password,String phone,String idNum,String realname,
    		String gender,String introduce,String account,String type,String state) {
    	super();
    	this.eamil=eamil;
    	this.password=password;
    	this.gender=gender;
    	this.phone=phone;
    	this.realname=realname;
    	this.idNum=idNum;
    	this.introduce=introduce;
    	this.account=account;
    	this.type=type;
    	this.state=state;
    }
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getIdNum() {
		return idNum;
	}
	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
