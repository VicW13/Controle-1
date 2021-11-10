import java.sql.ResultSet;
import java.sql.SQLException;
import java.math.*;

public class Vue {

    public static void showView(ResultSet result) throws SQLException {

        try {
            while (result.next()) {
                //Traitement requête
                int poids = result.getInt("poids");
                int trancheU = result.getInt("idTran");
                int prix = poids*trancheU;
                System.out.println("Tranche à lunité : " + trancheU);
                System.out.println("Prix à l'unité : " + prix + ".");
            }
        } catch (SQLException se) {
            se.getMessage();
        }

    }
}

