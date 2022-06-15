
package project;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
public class Login  {
       static testlog f=new testlog();
    public Login()
    {
      

    }
    public void mainframe()
    {
         f.setLocation(700,250);
       f.setSize(400,400);
       f.setVisible(true);
    }
     public void adduserframe()
    {
         AddUser us=new AddUser();
       us.setLocation(700,250);
       us.setSize(400,400);
       us.setVisible(true);
    }
    public void editusersframe(int id)
    {
         Edit_users ed=new Edit_users(id);
       ed.setLocation(700,250);
       ed.setSize(400,400);
       ed.setVisible(true);
    }
    public void usersframe()
    {
        Users u=new Users();
       u.setLocation(700,250);
       u.setSize(600,600);
       u.setVisible(true);
    }
   public boolean Admin(String s)
   {
      try {
            // TODO add your handling code here:
            
            int count =0;
            DatabaseConnection db=new DatabaseConnection();
          Statement st=db.setStatement();
           
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
                count=rs.getInt("count(1)");
            }
            if(count==1)
            {
                return true;
            }
            else
            {
                return false;
            }
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(testlog.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(testlog.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
   }
 
}
