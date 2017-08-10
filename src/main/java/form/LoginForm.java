package form;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class LoginForm {
	@NotNull
	@Size(min=1,max=11)
	private String username;
	@NotNull
	@Size(min=1,max=11)
	private String itcode;
	@Min(0)
	@Max(20)
	private int valicode;
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
	public int getValicode() {
		return valicode;
	}
	public void setValicode(int valicode) {
		this.valicode = valicode;
	}
}
