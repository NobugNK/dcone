package form;

import javax.validation.constraints.*;

public class WalletForm {
	@Override
	public String toString() {
		return "WalletForm [itcode=" + itcode + ", username=" + username + ", amount=" + amount + "]";
	}
	@NotNull
	@Size(min=1,max=11)
	private String itcode;
	@NotNull
	@Size(min=1,max=8)
	private String username;
	@NotNull
	@Min(1)
	@Max(1000000)
	private int amount;
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
}
