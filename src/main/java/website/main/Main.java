package website.main;

import org.mindrot.jbcrypt.BCrypt;

public class Main {

	public static void main(String[] args) {
		String hashedPassword = BCrypt.hashpw("password", BCrypt.gensalt());
		System.out.println(hashedPassword);
		System.out.println(new String(hashedPassword).length());
	}
}
