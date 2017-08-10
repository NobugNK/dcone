package form;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
/**
 * 打赏的金额至少为1元
 * @author 233
 *
 */
public class GiftForm {
	@NotNull
	@Min(0)
	@Max(1000000)
	private int pid;
	@NotNull
	@Min(1)
	@Max(10000000)
	private int gift_number;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getGift_number() {
		return gift_number;
	}
	public void setGift_number(int gift_number) {
		this.gift_number = gift_number;
	}
	@Override
	public String toString() {
		return "GiftForm [pid=" + pid + ", gift_number=" + gift_number + "]";
	}
}
