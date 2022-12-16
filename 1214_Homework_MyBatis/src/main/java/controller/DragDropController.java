package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DragDropController {

	
	@RequestMapping("/dragdrop.htm")
	public String dragdrop() {
		
		return "dragdrop";
	}
}
