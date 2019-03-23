package cc.entityclass;

public class Conact {
	    private String name;
	    private String gender;
	    private String job;
	    private String phone;
	    private String zphone;
	    private String email;
	    private String remark;
	    public Conact() {
	    	super();
	    }
	    public Conact(String email,String name,String gender,String job,String phone,String zphone,String remark) {
	    	super();
	    	this.email=email;
	    	this.name=name;
	    	this.gender=gender;
	    	this.job=job;
	    	this.phone=phone;
	    	this.zphone=zphone;
	    	this.remark=remark;
	    }
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getJob() {
			return job;
		}
		public void setJob(String job) {
			this.job = job;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getZphone() {
			return zphone;
		}
		public void setZphone(String zphone) {
			this.zphone = zphone;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getRemark() {
			return remark;
		}
		public void setRemark(String remark) {
			this.remark = remark;
		}
	    
}
