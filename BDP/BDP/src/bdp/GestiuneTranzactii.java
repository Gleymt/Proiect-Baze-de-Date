/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bdp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import sun.util.logging.PlatformLogger;

/**
 *
 * @author Senpai
 */
public class GestiuneTranzactii {
    public void AdaugaTranzactie(JTable table,String valueToSearch)
    { Connection con = MyConnection.getConnection();
    PreparedStatement ps;
    try{
        ps=con.prepareStatement("SELECT * FROM tranzactii");
        ps.setString(1,"%"+valueToSearch+"");
        
        ResultSet rs = ps.executeQuery();
        DefaultTableModel model = (DefaultTableModel)table.getModel();
        
        Object[] row;
        
        while(rs.next()){
            row = new Object[8];
            row[0] = rs.getInt(1);
            row[1] = rs.getString(2);
            row[2] = rs.getString(3);
            row[3] = rs.getInt(4);
            row[4] = rs.getString(5);
            row[5] = rs.getInt(6);
            row[6] = rs.getString(7);
            row[7] = rs.getInt(8);        
        }
                
    } catch (SQLException ex) {
        Logger.getLogger(GestiuneTranzactii.class.getName()).log(Level.SEVERE,null,ex);
    }
    
    
    
    }
    
}
