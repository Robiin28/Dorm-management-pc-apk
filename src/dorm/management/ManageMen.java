/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dorm.management;

import java.awt.Font;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author Dell
 */
public class ManageMen extends javax.swing.JFrame {

    /**
     * Creates new form ManageMen
     */
    Connection con;
    public ManageMen() {
        initComponents();
        connection();
        showTablemen();
        jblock.setEditable(false);
        jroom.setEditable(false);
    }
    
     public void connection(){
      
         
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dormmanage?zeroDateTimeBehavior=convertToNull","root","****");
        } catch (SQLException ex) {
            Logger.getLogger(Login_page.class.getName()).log(Level.SEVERE, null, ex);
        }
               
}
       public void showTablemen() {
   
     DefaultTableModel tablemodel = (DefaultTableModel) jtabmen.getModel();
    JTableHeader header = jtabmen.getTableHeader();
    header.setFont(new Font("Times New Roman", Font.BOLD, 18));

    try {
        PreparedStatement stmt = con.prepareStatement("SELECT droll, firstN, lastN, age,phone,id,department,year,build_no,room_no FROM menstd");
        ResultSet rs = stmt.executeQuery();

        // Clear existing rows and columns in the table model
        tablemodel.setRowCount(0);
        tablemodel.setColumnCount(0);

        // Add column names to the table model
        tablemodel.addColumn("d.roll");
        tablemodel.addColumn("FName");
        tablemodel.addColumn("LName");
        tablemodel.addColumn("Age");
        tablemodel.addColumn("Phone");
        tablemodel.addColumn("Id");
        tablemodel.addColumn("dep");
        tablemodel.addColumn("year");
        tablemodel.addColumn("buildno");
        tablemodel.addColumn("roomNo");
      

        // Populate rows in the table model
        while (rs.next()) {
            
            int droll = rs.getInt("droll");
            String fnam = rs.getString("firstN");
            String lnam = rs.getString("lastN");
            int age = rs.getInt("age");
            String phone = rs.getString("phone");
            String id = rs.getString("id");
            String dep = rs.getString("department");
            String year = rs.getString("year");
            String bno = rs.getString("build_no");
            String rno = rs.getString("room_no");
           
            

            tablemodel.addRow(new Object[]{droll, fnam,lnam,age, phone,id,dep,year,bno,rno});
        }

    } catch (SQLException e) {
        System.out.println("Error showing table...");
    }
}
     
     

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jsearch = new javax.swing.JButton();
        jroom = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jid = new javax.swing.JTextField();
        jblock = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jdel = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jtabmen = new javax.swing.JTable();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setBounds(new java.awt.Rectangle(280, 90, 0, 0));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 36)); // NOI18N
        jLabel1.setText("Men Students");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 30, -1, -1));

        jsearch.setBackground(new java.awt.Color(102, 255, 255));
        jsearch.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jsearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/search.png"))); // NOI18N
        jsearch.setText("Search");
        jsearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jsearchActionPerformed(evt);
            }
        });
        getContentPane().add(jsearch, new org.netbeans.lib.awtextra.AbsoluteConstraints(700, 90, 120, 40));

        jroom.setForeground(new java.awt.Color(255, 102, 102));
        getContentPane().add(jroom, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 210, 210, 28));

        jLabel10.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 51, 51));
        jLabel10.setText("Search by ID");
        getContentPane().add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 90, 140, 40));
        getContentPane().add(jid, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 88, 220, 40));

        jblock.setForeground(new java.awt.Color(255, 51, 51));
        getContentPane().add(jblock, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 160, 210, 28));

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel2.setText("block");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 170, -1, -1));
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 140, -1, -1));

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel4.setText("room");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 210, -1, -1));
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(560, 720, 90, 20));

        jdel.setBackground(new java.awt.Color(255, 51, 51));
        jdel.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jdel.setForeground(new java.awt.Color(255, 255, 255));
        jdel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/delete.png"))); // NOI18N
        jdel.setText("delete");
        jdel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jdelActionPerformed(evt);
            }
        });
        getContentPane().add(jdel, new org.netbeans.lib.awtextra.AbsoluteConstraints(840, 670, 120, 40));
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(980, 690, 50, 50));

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 51, 51), 2));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jtabmen.setBackground(new java.awt.Color(255, 255, 102));
        jtabmen.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jtabmen);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, 860, 320));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 270, 920, 380));

        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Close all jframe.png"))); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(970, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jsearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jsearchActionPerformed

       try {
    String idn = jid.getText();

    // Check if the ID is not empty
    if (idn.isEmpty()) {
        JOptionPane.showMessageDialog(this, "Please enter an ID for the search.", "Error", JOptionPane.ERROR_MESSAGE);
        return;
    }

    // Prepare the SQL statement
    String query = "SELECT * FROM menstd WHERE id=?";
    try (PreparedStatement stmt = con.prepareStatement(query)) {
        stmt.setString(1, idn);

        // Execute the query
        try (ResultSet rs = stmt.executeQuery()) {
            // Check if the result set has data
            if (rs.next()) {
                // Display the data in your UI components (replace with your actual UI component names)
                jblock.setText(rs.getString("build_no"));
                jroom.setText(rs.getString("room_no"));
            } else {
                // No data found
                JOptionPane.showMessageDialog(this, "No data found for the given ID.", "Search Result", JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
} catch (SQLException e) {
    e.printStackTrace();
    JOptionPane.showMessageDialog(this, "Error executing SQL query: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
}
    }//GEN-LAST:event_jsearchActionPerformed

    private void jdelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jdelActionPerformed

try {
        int row = jtabmen.getSelectedRow();
        if (row == -1) {
            // No row selected
            JOptionPane.showMessageDialog(this, "Please select a row to delete.", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        int id = (int) jtabmen.getValueAt(row, 0);

        PreparedStatement stmt = con.prepareStatement("DELETE FROM menstd WHERE droll = ?", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        stmt.setInt(1, id);

        stmt.executeUpdate();
        

        JOptionPane.showMessageDialog(this, "Room deleted successfully");

        stmt.close();
    } catch (SQLException e) {
        JOptionPane.showMessageDialog(this, "Error deleting room: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        e.printStackTrace();
    }
       
       showTablemen();   


        // TODO add your handling code here:
    }//GEN-LAST:event_jdelActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
  this.setVisible(false);          // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ManageMen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ManageMen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ManageMen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ManageMen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ManageMen().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jblock;
    private javax.swing.JButton jdel;
    private javax.swing.JTextField jid;
    private javax.swing.JTextField jroom;
    private javax.swing.JButton jsearch;
    private javax.swing.JTable jtabmen;
    // End of variables declaration//GEN-END:variables
}
