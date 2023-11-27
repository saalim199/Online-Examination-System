import  java.sql.DriverManager;
import java.sql.Connection;

public class Abcd {
	public static void main(String[] args) {
		Connection con=null;
		try {
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ejporj","root","8808726160");
			if(con!=null) {
				System.out.println("Connected Success");
			}
		} catch (Exception e) {

			// TODO: handle exception
			System.out.println("NOT CONNECTED"+e.toString());
		}
	}
}
