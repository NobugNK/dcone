package form;
import javax.validation.constraints.*;


//
public class ListForm {
	@NotNull
	private String play_name;//节目的名字
	@NotNull
	private int play_order;//节目的顺序
	@NotNull
	private String department;//节目的部门
	
	public String getPlay_name() {
		return play_name;
	}
	public void setPlay_name(String play_name) {
		this.play_name = play_name;
	}
	public int getPlay_order() {
		return play_order;
	}
	public void setPlay_order(int play_order) {
		this.play_order = play_order;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}

}
