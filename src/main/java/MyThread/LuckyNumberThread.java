package MyThread;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dcone.dtss.DAO.LuckyDAO;
import com.dcone.dtss.DAO.LuckyNumberDAO;
import com.dcone.dtss.DAO.LuckyNumberRecordDAO;
import com.dcone.dtss.DAO.TradeDAO;
import com.dcone.dtss.DAO.WalletDAO;
import com.dcone.dtss.model.dc_wallet;

@SuppressWarnings("unused")
public class LuckyNumberThread extends Thread{
	boolean flag=false;
	JdbcTemplate jdbcTemplate;
	int round;
	public int getRound() {
		return round;
	}

	public void setRound(int round) {
		this.round = round;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	//当flag为true的时候开始发送
	@Override
	public void run() {
		// TODO Auto-generated method stub
	System.out.println("红包雨开始咯");
	List<dc_wallet> wallets=WalletDAO.getAllWallets(jdbcTemplate);
	for(dc_wallet temp:wallets)
	{
		System.out.println(temp);
	//获取到了所有的用户
		if(flag) {
			int total =LuckyNumberDAO.getTotalbyRound(round);
			int lucknumber=0;
			Random r= new Random();
			if(total > 0)
			{
				if(total>5000)
				{
					lucknumber=r.nextInt(5000);
				}
				else 
				{
					lucknumber =total;
				}
			}else
			{
			break;	
			}
			//LuckyDAO.LuckyRain(jdbcTemplate);
			//发红包,还需完善，新建一个表格，把所有发的红包雨的记录给记录下来，dc_trade交易记录,将来两个是要核对的
			//发红包的调用微信的一个函数
			try {
				Thread.sleep(1000);
				int i=LuckyNumberDAO.luckyRain(round, lucknumber);
				int j=LuckyNumberRecordDAO.newRecord();
				int k=WalletDAO.walletAdd(temp.getWid(), lucknumber);
				int l=TradeDAO.createTrade(temp.getWid(), lucknumber, new Date().toString(), "红包雨", jdbcTemplate);
			
				if(i*j*k*l>0)
				{
					//ok
				}else
				{
					//error
				}
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
	}	
}
