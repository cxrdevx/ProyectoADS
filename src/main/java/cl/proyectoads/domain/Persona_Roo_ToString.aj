// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Persona;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect Persona_Roo_ToString {
    
    public String Persona.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("cursoProfesor", "mensajeEnvio", "personae", "idTipoPersona", "idRol", "idApoderado").toString();
    }
    
}
