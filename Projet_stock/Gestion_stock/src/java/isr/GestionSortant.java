
package isr;
import isr.ConnectionBase;
import isr.Produit;
import java.sql.ResultSet;

/**
 *
 * @author RAKOTOSEHENO
 */
public class GestionSortant {
    
    public ConnectionBase connexion;
    public GestionSortant() throws Exception{
        connexion= new ConnectionBase();
    }
    
public void insert(Sortant obj) throws Exception{
        String query="INSERT INTO fruit_sortant VALUES ('"+obj.getId()+"','"+obj.getDesignation()+"','"+obj.getQuantite_sortant()+"')";
		connexion.executeUpdate(query);
	}
    
public void update(String id,Sortant obj) throws Exception {
		String query="UPDATE fruit_sortant SET designation='"+obj.getDesignation()+"',quantite_sortant='"+obj.getQuantite_sortant()+"' where id='"+id+"'";
		connexion.executeUpdate(query);
		}
    public void delete (String id) throws Exception{
        String query="DELETE FROM fruit_sortant WHERE id='"+id+"'";
        connexion.executeUpdate(query);
    }
    
    public ResultSet getAll () throws Exception{
        String query="SELECT * FROM fruit_sortant order by id asc";
        ResultSet rs = connexion.executeQuery(query);
       return rs;
    }
}
