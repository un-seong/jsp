package day06;

import java.util.Random;
import java.util.Scanner;

public class UpDownGame {
	
	private int answer;
	private int cnt;
	private Random ran = new Random();
	
	public UpDownGame() {
		// 객체를 생성할 때, 정답을 한번만 정한다.
		this.answer = ran.nextInt(100) + 1;
	}
	
	public String checkInput(int user) {
		cnt++;
		if(user > answer) {
			return "down";
		}
		else if(user < answer) {
			return "up";
		}
		else {
			return "correct";
		}
	}
	
	public String getResult() {
		return String.format("축하합니다. %d회만에 정답을 맞췄습니다", cnt);
	}
	
	
	
	// 실제 웹 연동에서는 사용되지 않는 테스트 코드
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int user;
		
		do {
			System.out.println("값 입력 : ");
			user = sc.nextInt();
			
			String check = instance.checkInput(user);
			if(check.equals("correct")) {
				break;
			}
			System.out.println(check);
			
		} while(true);
		System.out.println(instance.getResult());
		sc.close();
	}
	private static UpDownGame instance = new UpDownGame();
}
