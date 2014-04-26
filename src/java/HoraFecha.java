import java.text.SimpleDateFormat;
import java.util.Calendar;
class Hilo implements Runnable {
// SimpleDateFormat dateFormat = new SimpleDateFormat(&quot;yyyy-MM-dd HH:mm:ss&quot ;

SimpleDateFormat dateFormatDeHoy = new SimpleDateFormat(&quot;dd-MM-yyyy&quot ;

String fecha;
String fechaDeHoy;

    public void run() {
        fechaDeHoy = dateFormatDeHoy.format(Calendar.getInstance().getTime()) ;
        fecha = dateFormat.format(Calendar.getInstance().getTime()) ;
        System.out.println(fechaDeHoy) ;
    }
}