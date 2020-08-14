
package acme.features.administrator.technologyRecords;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.technologyRecords.TechnologyRecord;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractListService;

@Service
public class AdministratorTechnologyRecordsListService implements AbstractListService<Administrator, TechnologyRecord> {

	@Autowired
	private AdministratorTechnologyRecordsRepository repository;


	@Override
	public boolean authorise(final Request<TechnologyRecord> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<TechnologyRecord> request, final TechnologyRecord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "inventor", "description");
	}

	@Override
	public Collection<TechnologyRecord> findMany(final Request<TechnologyRecord> request) {

		Collection<TechnologyRecord> result;

		result = this.repository.findManyOrder();

		return result;
	}

}
