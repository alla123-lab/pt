package Dao;

import Beans.etudiant;
import Metier.Ietudiant;
import Metier.SingletonConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class etudiantdao implements Ietudiant {

    @Override
    public int login(String email, String password) {
        int id = -1;
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT id AS MAX_ID FROM etudiant where email like ? and  password like ?");
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("MAX_ID");
            }
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    @Override
    public void register(etudiant e) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO `etudiant`(`username`, `email`,`password`) VALUES (?,?,?)");
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getPassword());
            ps.executeUpdate();
            PreparedStatement ps2 = connection.prepareStatement("SELECT MAX(id) AS MAX_ID FROM etudiant");
            ResultSet rs = ps2.executeQuery();
            if (rs.next()) {
                e.setId(rs.getInt("MAX_ID"));
            }
            ps.close();
            System.err.println("inserer");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
   }

    @Override
    public etudiant select(int id) {
        Connection connection = SingletonConnection.getConnection();
        etudiant e = new etudiant();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT  * FROM etudiant where id = ?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setEmail(rs.getString("email"));
                e.setId(rs.getInt("id"));
                e.setUsername(rs.getString("username"));
                e.setPassword(rs.getString("password"));

            }
            ps.close();

        } catch (SQLException er) {
            er.printStackTrace();
        }

        return e;

    }
}
