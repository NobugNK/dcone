package form;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserForm {

	@NotNull
	@Size(min=1,max=11)
	private String username;
	@NotNull
	@Size(min=1,max=11)
	private String itcode;
	@NotNull
	@Min(0)
	@Max(1)
	private int isOnthescene;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getItcode() {
		return itcode;
	}
	public void setItcode(String itcode) {
		this.itcode = itcode;
	}
	public int getisOnthescene() {
		return isOnthescene;
	}
	public void setisOnthescene(int isOnthescene) {
		this.isOnthescene = isOnthescene;
	}
}
