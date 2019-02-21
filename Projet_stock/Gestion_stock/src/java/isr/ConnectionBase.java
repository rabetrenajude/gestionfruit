
package isr;

/**
 *
 * @author RAKOTOSEHENO
 */

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;


public class ConnectionBase {
    
 public Connection con;
    public Statement stat;

    public ConnectionBase() throws Exception{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/ges_stock","root","");
	stat = con.createStatement();
    }

    public ResultSet executeQuery(String query)throws Exception{
		ResultSet rs=null;
             
		rs=stat.executeQuery(query);
		return(rs);
	}
	public int executeUpdate(String query) throws Exception{
		int rs=0;
		rs=stat.executeUpdate(query);
		return(rs);
	}
	public void close() throws Exception{
		stat.close();
		con.close();
	}    
        

}

