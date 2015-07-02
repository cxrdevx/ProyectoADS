package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Curso;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/cursoes")
@Controller
@RooWebScaffold(path = "cursoes", formBackingObject = Curso.class)
public class CursoController {
}
