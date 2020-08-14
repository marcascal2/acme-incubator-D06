
package acme.features.patron.banner;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.banners.Banner;
import acme.entities.roles.Patron;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractListService;

@Service
public class PatronBannerListService implements AbstractListService<Patron, Banner> {

	// Internal state ------------------------------------------------------------------

	@Autowired
	PatronBannerRepository repository;


	@Override
	public boolean authorise(final Request<Banner> request) {
		assert request != null;

		return request.getPrincipal().getActiveRole().getTypeName().equals("acme.entities.roles.Patron");
	}

	@Override
	public void unbind(final Request<Banner> request, final Banner entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "slogan", "url");
	}

	@Override
	public Collection<Banner> findMany(final Request<Banner> request) {
		assert request != null;

		Collection<Banner> result;

		int patronId = request.getPrincipal().getActiveRoleId();
		result = this.repository.findManyByPatronId(patronId);

		return result;
	}
}
