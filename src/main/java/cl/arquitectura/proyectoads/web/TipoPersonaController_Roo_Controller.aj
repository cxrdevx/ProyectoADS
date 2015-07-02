// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.web;

import cl.arquitectura.proyectoads.domain.Persona;
import cl.arquitectura.proyectoads.domain.TipoPersona;
import cl.arquitectura.proyectoads.web.TipoPersonaController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect TipoPersonaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoPersonaController.create(@Valid TipoPersona tipoPersona, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoPersona);
            return "tipopersonas/create";
        }
        uiModel.asMap().clear();
        tipoPersona.persist();
        return "redirect:/tipopersonas/" + encodeUrlPathSegment(tipoPersona.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoPersonaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoPersona());
        return "tipopersonas/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String TipoPersonaController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("tipopersona", TipoPersona.findTipoPersona(id));
        uiModel.addAttribute("itemId", id);
        return "tipopersonas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoPersonaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipopersonas", TipoPersona.findTipoPersonaEntries(firstResult, sizeNo));
            float nrOfPages = (float) TipoPersona.countTipoPersonas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipopersonas", TipoPersona.findAllTipoPersonas());
        }
        return "tipopersonas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoPersonaController.update(@Valid TipoPersona tipoPersona, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoPersona);
            return "tipopersonas/update";
        }
        uiModel.asMap().clear();
        tipoPersona.merge();
        return "redirect:/tipopersonas/" + encodeUrlPathSegment(tipoPersona.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String TipoPersonaController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, TipoPersona.findTipoPersona(id));
        return "tipopersonas/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoPersonaController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoPersona tipoPersona = TipoPersona.findTipoPersona(id);
        tipoPersona.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipopersonas";
    }
    
    void TipoPersonaController.populateEditForm(Model uiModel, TipoPersona tipoPersona) {
        uiModel.addAttribute("tipoPersona", tipoPersona);
        uiModel.addAttribute("personae", Persona.findAllPersonae());
    }
    
    String TipoPersonaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
