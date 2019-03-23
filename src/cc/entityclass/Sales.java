package cc.entityclass;

public class Sales {
	private int id;
	private String name;
	private int todaynum;
	private int weekendnum;
	private int monthnum;
	public Sales(String name, int todaynum,int weekendnum,int monthnum) {
		super();
		this.name = name;
		this.todaynum = todaynum;
		this.weekendnum=weekendnum;
		this.monthnum=monthnum;

	}

	public Sales() {
		super();

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTodaynum() {
		return todaynum;
	}

	public void setTodaynum(int todaynum) {
		this.todaynum = todaynum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getWeekendnum() {
		return weekendnum;
	}

	public void setWeekendnum(int weekendnum) {
		this.weekendnum = weekendnum;
	}

	public int getMonthnum() {
		return monthnum;
	}

	public void setMonthnum(int monthnum) {
		this.monthnum = monthnum;
	}

}
