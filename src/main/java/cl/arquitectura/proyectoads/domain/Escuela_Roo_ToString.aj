// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Escuela;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect Escuela_Roo_ToString {
    
    public String Escuela.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("cursoes", "mensajeEnvios").toString();
    }
    
}
