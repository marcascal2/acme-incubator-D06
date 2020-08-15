
package acme.features.authenticated.challenge;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.challenges.Challenge;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Authenticated;

@Controller
@RequestMapping("/authenticated/challenge/")
public class AuthenticatedActiveChallengeController extends AbstractController<Authenticated, Challenge> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AuthenticatedActiveChallengeListService	listService;

	@Autowired
	private AuthenticatedActiveChallengeShowService	showService;


	// Constructors -----------------------------------------------------------

	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}

}