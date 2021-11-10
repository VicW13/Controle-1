import java.util.List;

public class SocieteFinancement {
    private String code;
    private String nom;
    private List<Expertise> lesExpertises;

    public SocieteFinancement(String code, String nom, List<Expertise> lesExpertises) {
        this.code = code;
        this.nom = nom;
        this.lesExpertises = lesExpertises;
    }


}
