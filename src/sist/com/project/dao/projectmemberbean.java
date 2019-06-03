package sist.com.project.dao;


public class projectmemberbean {
	private String FIRSTNAME;	
	private String NAME;
	private String ID;
	private String PASSWORD;
	private String GENDER;
	private String ADRESS;
	private String PHONENUM;
	
	
	public String getFIRSTNAME() {
		return FIRSTNAME;
	}


	public void setFIRSTNAME(String FIRSTNAME) {
		this.FIRSTNAME = FIRSTNAME;
	}


	public String getNAME() {
		return NAME;
	}


	public void setNAME(String NAME) {
		this.NAME = NAME;
	}


	public String getID() {
		return ID;
	}


	public void setID(String ID) {
		this.ID = ID;
	}


	public String getPASSWORD() {
		return PASSWORD;
	}


	public void setPASSWORD(String PASSWORD) {
		this.PASSWORD = PASSWORD;
	}


	public String getGENDER() {
		return GENDER;
	}


	public void setGENDER(String GENDER) {
		this.GENDER = GENDER;
	}


	public String getADRESS() {
		return ADRESS;
	}


	public void setADRESS(String ADRESS) {
		this.ADRESS = ADRESS;
	}


	public String getPHONENUM() {
		return PHONENUM;
	}


	public void setPHONENUM(String PHONENUM) {
		this.PHONENUM = PHONENUM;
	}


	@Override
	public String toString() {
		return "projectmemberbean [FIRSTNAME=" + FIRSTNAME + ", NAME=" + NAME + ", ID=" + ID + ", PASSWORD=" + PASSWORD
				+ ", GENDER=" + GENDER + ", ADRESS=" + ADRESS + ", PHONENUM=" + PHONENUM + "]";
	}
	
	
	
	

	
	
	

}
