import javax.print.attribute.DateTimeSyntax;

public class RDV_Client extends Expertise {
    private String nomContact;
    private String telephone;
    private String mail;

    public RDV_Client(String codeDossier, DateTimeSyntax dateHeureRDV, String adresse, String immatriculation, String marque, String modele, Indisponibilite uneIndispo, String nomContact, String telephone, String mail) {
        super(codeDossier, dateHeureRDV, adresse, immatriculation, marque, modele, uneIndispo);
        this.nomContact = nomContact;
        this.telephone = telephone;
        this.mail = mail;
    }
}