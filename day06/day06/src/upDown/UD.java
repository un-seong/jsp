package upDown;

import java.util.Random;
import java.util.Scanner;

public class UD {

	private int cnt;
	private int answer;
	
	Random ran = new Random();
	
	public UD() {
		cnt = 0;
	}
	
	
	public int getAnswer() {
		return answer;	
	}

	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String checkInput(int num) {
		return num + "";
	}
	
	public int cpuValue() {
		answer = ran.nextInt(101);
		return answer;
	}
	
	public String result(int user, int cpu) {
		String result = "정답 !";
		
		if(cpu > user) {
			result = "업 !";
		}
		
		if(cpu < user) {
			result = "다운 !";
		}
		
		cnt++;
		
		return result;
	}
		
	public static void main(String[] args) {
		UD ud = new UD();
		
		int cpu = ud.getAnswer();
		int cnt = 0;
		
		
		while(true) {	
			Scanner sc = new Scanner(System.in);
			int user = Integer.parseInt(sc.nextLine());
			
			String result = ud.result(user, cpu);
			
			System.out.println(result);
			cnt++;
			
			if(result.equals("정답 !")) {
				break;
			} 
		}
		
		
		
	}

}
