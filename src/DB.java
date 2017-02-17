import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	public static Connection getConnection(){
		Connection con=null;
		try{
			
			Class.forName("org.postgresql.Driver");
			
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/LibDB","postgres","Pass@word1");
			System.out.println("DB connected");
		}catch(Exception e){System.out.println(e);}
		return con;
		
	}

}
