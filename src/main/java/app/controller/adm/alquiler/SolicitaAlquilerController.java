package app.controller.adm.alquiler;

import app.dao.CampoDAO;
import app.dao.SolicitudAlquilerDAO;
import app.model.Campo;
import app.model.SolicitudAlquiler;
import java.util.Date;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("adm/solicitaAlquiler")
public class SolicitaAlquilerController {

    protected static Logger logger = Logger.getLogger("controller");
    @SuppressWarnings("restriction")
    @Resource(name = "springService")
    private ArithmeticService springService;
    @Autowired
    SolicitaAlquilerService service;
    @Autowired
    SolicitudAlquilerDAO solicitudAlquilerDAO;
    @Autowired
    CampoDAO campoDAO;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("alquileres", service.list());
        return "adm/solicitaAlquiler/solicitaAlquiler";
    }

    @RequestMapping("new")
    public String nuevo(Model model) {
        model.addAttribute("solicitaAlquiler", new SolicitudAlquiler());

        return "adm/solicitaAlquiler/solicitaAlquilerForm";
    }

    @RequestMapping("listAlquiler/{tipoLocal}")
    public String listaAlquiler(@PathVariable String tipoLocal, Model model) {
        // model.addAttribute("solicitaAlquiler", new SolicitudAlquiler());
        model.addAttribute("campos", campoDAO.list());
        return "adm/solicitaAlquiler/solicitaAlquilerForm";
    }

    /**
     * Handles and retrieves the non-AJAX, ordinary Add page
     */
    @RequestMapping(value = "listCamposDisponible", method = RequestMethod.GET)
    public String getNonAjaxAddPage() {
        return "adm/solicitaAlquiler/solicitaAlquilerForm";
    }

    /**
     * Handles request for adding two numbers
     */
    @RequestMapping(value = "listCamposDisponible", method = RequestMethod.POST)
    public String add(@RequestParam(value = "id", required = true) String id,
            @RequestParam(value = "dia", required = true) String dia,
            @RequestParam(value = "horaInicio", required = true) String horaInicio,
            @RequestParam(value = "horaFin", required = true) String horaFin,
            @RequestParam(value = "tipoLocal", required = true) Integer tipoLocal,
            Model model) {
        //  logger.debug("Received request to add two numbers");

        // Delegate to service to do the actual adding
        //  Integer sum = springService.add(inputNumber1, inputNumber2);

        // Add to mod
        //model.addAttribute("sum", dia);
        if (tipoLocal >0) {
            model.addAttribute("campos", campoDAO.getTipo(tipoLocal));
            model.addAttribute("dia", dia);
            model.addAttribute("horaInicio", horaInicio);
            model.addAttribute("horaFin", horaFin);
            return "adm/solicitaAlquiler/solicitaAlquilerForm";

        } else {
            return "adm/solicitaAlquiler/nonajax-add-result-page";
        }
}
        @RequestMapping(value = "save" , method = RequestMethod.POST)
        public String save ( Model model) {

             model.addAttribute("servicio", new SolicitudAlquiler());
            return "adm/solicitaAlquiler/nonajax-add-result-page";
        }

    
}
