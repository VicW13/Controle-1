import javax.print.attribute.DateTimeSyntax;

public abstract class Expertise {

    private String codeDossier;
    private DateTimeSyntax dateHeureRDV;
    private String adresse;
    private String immatriculation;
    private String marque;
    private String modele;
    private Indisponibilite uneIndispo;

    public Expertise(String codeDossier, DateTimeSyntax dateHeureRDV, String adresse, String immatriculation, String marque, String modele, Indisponibilite uneIndispo) {
        this.codeDossier = codeDossier;
        this.dateHeureRDV = dateHeureRDV;
        this.adresse = adresse;
        this.immatriculation = immatriculation;
        this.marque = marque;
        this.modele = modele;
        this.uneIndispo = uneIndispo;
    }


}
