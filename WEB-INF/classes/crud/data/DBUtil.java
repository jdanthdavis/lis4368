package crud.data;

import java.sql.*;

//database connection cleanup: close statements, prepared statements, and result sets
public class DBUtil {
	public static void closeStatement(Statement s) {
try {
	if (s != null) {
		s.close();

	}//end if 

}//end try 

catch (SQLException e) {
	System.out.println(e);


}//end catch 


	}//end closestatement
public static void closePreparedStatement(Statement ps) {
	try {
		if (ps != null) {
			ps.close();
		}//end if 

	}//end try 

	catch (SQLException e) {
		System.out.println(e);
	}
}//end closepreparedstatement

public static void closeResultSet(ResultSet rs) {
	try {
		if (rs != null) {
			rs.close();
		}//end if 

	}//end try

	catch (SQLException e) {

		System.out.println(e);

	}//end catch
}//end closeresultset







}//end class