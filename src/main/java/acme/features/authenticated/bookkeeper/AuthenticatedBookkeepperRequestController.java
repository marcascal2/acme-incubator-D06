
package acme.features.authenticated.bookkeeper;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.bookkeeperRequest.BookkeeperRequest;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Authenticated;

@Controller
@RequestMapping("/authenticated/bookkeeper-request/")
public class AuthenticatedBookkeepperRequestController extends AbstractController<Authenticated, BookkeeperRequest> {

	@Autowired
	private AuthenticatedBookkeeperRequestCreateService	createService;

	@Autowired
	private AuthenticatedBookkeeperRequestUpdateService	updateService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.CREATE, this.createService);
		super.addBasicCommand(BasicCommand.UPDATE, this.updateService);
	}

}
