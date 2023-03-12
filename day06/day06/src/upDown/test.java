package upDown;

import java.util.Random;
import java.util.Scanner;

public class test {
	public static void main(String[] args) {
		Random ran = new Random();
		Scanner sc = new Scanner(System.in);
		
		int cpu, user, cnt = 0;	
	
		cpu = ran.nextInt(100) + 1;
		
		
		while(true) {
			cnt++;
			
			System.out.print("정답을 맞춰보세요 (1 ~ 100) : ");
			user = sc.nextInt();

			if(user == cpu) {
				break;
			}
	
			
			else if(user > cpu) {
				System.out.println("down!");
			}
			
	
			else {
				System.out.println("up!");
			}
			
		}
		
		System.out.printf("정답! %d회만에 정답을 맞췄습니다!\n", cnt);
		
		sc.close();
	}
}
