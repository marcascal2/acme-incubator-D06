
package acme.features.entrepreneur.activity;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.activities.Activity;
import acme.entities.roles.Entrepreneur;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractListService;

@Service
public class EntrepreneurActivityListService implements AbstractListService<Entrepreneur, Activity> {

	@Autowired
	EntrepreneurActivityRepository repository;


	@Override
	public boolean authorise(final Request<Activity> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Activity> request, final Activity entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "amount", "startDate", "endDate", "title");
	}

	@Override
	public Collection<Activity> findMany(final Request<Activity> request) {
		assert request != null;
		Collection<Activity> result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findManyByInvestmentId(id);
		return result;
	}

}
