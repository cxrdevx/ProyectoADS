package cl.proyectoads;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "tipo_persona")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "personae" })
public class TipoPersona {
}
