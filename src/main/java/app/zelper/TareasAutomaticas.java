package app.zelper;

import app.dao.ServicioDAO;
import app.model.Servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;

public class TareasAutomaticas {

    @Autowired
    ServicioDAO servicioDAO;

    @Scheduled(cron = "0 0-2 * * * *")
    public void listServicio() {
        System.out.println("LISTANDO SERVICIOS");
        List<Servicio> servicios = servicioDAO.list();

        System.out.println("Listando servicios");
        for (Servicio servicio : servicios) {
            System.out.println(servicio.getDescripcion());

        }
    }

    @Async
    public static void enviarMensaje() {
        try {
            Thread.sleep(1000l);
            System.out.println("ENVIANDO MENSAJE");
        } catch (InterruptedException ex) {
            System.out.println("dgdgsd");
        }

    }
}
