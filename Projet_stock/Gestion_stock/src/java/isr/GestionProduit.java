
package isr;
import isr.ConnectionBase;
import isr.Produit;
import java.sql.ResultSet;

/**
 *
 * @author RAKOTOSEHENO
 */
public class GestionProduit {
    
    public ConnectionBase connexion;
    public GestionProduit() throws Exception{
        connexion= new ConnectionBase();
    }
    
public void insert(Produit obj) throws Exception{
        String query="INSERT INTO fruit VALUES ('"+obj.getId()+"','"+obj.getDescription()+"','"+obj.getNombre_entrant()+"')";
		connexion.executeUpdate(query);
	}
    
public void update(String id,Produit obj) throws Exception {
		String query="UPDATE fruit SET description='"+obj.getDescription()+"',nombre_entrant='"+obj.getNombre_entrant()+"' where id='"+id+"'";
		connexion.executeUpdate(query);
		}
    public void delete (String id) throws Exception{
        String query="DELETE FROM fruit WHERE id='"+id+"'";
        connexion.executeUpdate(query);
    }
    
    public ResultSet getAll () throws Exception{
        String query="SELECT * FROM fruit order by id asc";
        ResultSet rs = connexion.executeQuery(query);
       return rs;
    }
}
