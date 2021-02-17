/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Formularios.frmLogin;
import Formularios.frmPrimerAdmin;
import javax.swing.JOptionPane;

/**
 *
 * @author Will Vásquez
 */
public class ClsIniciar {
    public static frmLogin SplashScreen;
    
    public ClsIniciar() {
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
    /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
     * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
     */
    try {
        for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
            if ("Windows".equals(info.getName())) {
                javax.swing.UIManager.setLookAndFeel(info.getClassName());
                break;
            }
        }
    } catch (ClassNotFoundException ex) {
        java.util.logging.Logger.getLogger(ClsIniciar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    } catch (InstantiationException ex) {
        java.util.logging.Logger.getLogger(ClsIniciar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    } catch (IllegalAccessException ex) {
        java.util.logging.Logger.getLogger(ClsIniciar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    } catch (javax.swing.UnsupportedLookAndFeelException ex) {
        java.util.logging.Logger.getLogger(ClsIniciar.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    }
    //</editor-fold>
    }
    
    public void iniciar() {
        if (!comprobarUsuarios()) {
            if (JOptionPane.showConfirmDialog(null, "¡No hay ningún administrador registrado!\n¿Deseas ser el primer administrador?", "Bienvenido", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE) == JOptionPane.YES_OPTION) {
                frmPrimerAdmin obj = new frmPrimerAdmin();
                obj.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(null, "¡Debe haber un administrador para iniciar!", "AVISO", JOptionPane.CANCEL_OPTION);
                System.exit(0);
            }
        } else {
            SplashScreen = new frmLogin();
            SplashScreen.setVisible(true);
        }
    }

    private boolean comprobarUsuarios() {
        ClsHelp obj = new ClsHelp();
        return obj.CantidadUsuario() > 0;
    }
    
    public static void main (String[] args) {
        new ClsIniciar().iniciar();
    }
    
}
