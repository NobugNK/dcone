package form;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ChangeForm {

	@NotNull
	@Size(min=1,max=11)
	private String play_name;
	@NotNull
	private int order;
	public String getplay_name() {
		return play_name;
	}
	public void setplay_name(String play_name) {
		this.play_name = play_name;
	}
	public int getorder() {
		return order;
	}
	public void setorder(int order) {
		this.order = order;
	}
}
