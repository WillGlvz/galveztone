/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Will Vásquez
 */
public class ClsHelp {
    public static String ProNickPer;
    public static int ProCodigoPer;
    ClsConexion cc= new ClsConexion();
    Connection cn= cc.conectar();
    public int CantidadUsuario() {
        int resultado = 0;
        try {
            String sql = "SELECT COUNT(*) FROM administradores";
            try (PreparedStatement cmd = cn.prepareStatement(sql)) {
                try (ResultSet rs = cmd.executeQuery()) {
                    if(rs.next()) {
                        resultado = rs.getInt(1);
                    }
                }
            }
            cn.close();
        } catch(SQLException ex) {
            System.out.println(ex);
        }
        return resultado;
    }
    
}
