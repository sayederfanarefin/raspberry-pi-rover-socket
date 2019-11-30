import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import java.security.Principal;
import java.util.Iterator;

@RestController
@RequestMapping(value= "/sensors")
public class SensorReading {

	@GetMapping(value= {"/"})
	public String demo(){
		return "Yo! The reading is: 000";
	}
}