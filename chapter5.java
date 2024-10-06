import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class chapter5
{

  public static void main(String[] args)
  {
    try
    {
      // create a mysql database connection
      String myDriver = "com.mysql.cj.jdbc.Driver";
      String myUrl = "jdbc:mysql://database/chapter5";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      
      // our SQL SELECT query 
      String query = "SELECT * FROM course";


      // create the java statement
      Statement st = conn.createStatement();

      // execute the query, and get a java resultset
      ResultSet rs = st.executeQuery(query);

         /*  while (rs.next())
      {
        String id = rs.getString("ID");
        String name = rs.getString("name");
        String dept_name = rs.getString("dept_name");
        int tot_cred = rs.getInt("tot_cred");
        
        // print the results
        System.out.format("%s, %s, %s, %s\n", id, name, dept_name, tot_cred);
      }
      */

      
      
      // iterate through the java resultset
      while (rs.next())
      {
        String id = rs.getString("ID");
        String course_name = rs.getString("course_name");
        String dept_name = rs.getString("dept_name");
        
        // print the results
        System.out.format("%s, %s, %s\n", id, course_name, dept_name);
      }
      
      st.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
  }
  
}
