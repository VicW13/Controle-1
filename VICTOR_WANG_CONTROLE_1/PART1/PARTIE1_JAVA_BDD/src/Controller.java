import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Controller {

    public void traiterRequete () {

        Statement stmt1=null, stmt2=null;
        ResultSet rst1=null, rst2=null;

        Properties props = new Properties();
        String url= "jdbc:mysql://localhost:3306/inventaire";
        props.setProperty("user","root");
        props.setProperty("password","");

        Connection conn = null;

        try {

            conn = Connexion.getConnexion(url, props);

            Vue vue1 = new Vue();

            Repository rep1 = new Repository(stmt1);
            Repository rep2 = new Repository(stmt2);

            String req1 = "SELECT poids, idTran FROM `lot` WHERE `idAff` = '459629';";
            String req2 = "";

            rst1 = rep1.request(conn, req1);
            rst2 = rep2.request(conn, req2);


            vue1.showView(rst1);

        }

        catch (SQLException se) {
            se.getMessage();
        }

    }
}
