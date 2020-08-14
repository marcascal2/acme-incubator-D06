
package acme.features.administrator.overture;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.overtures.Overture;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorOvertureRepository extends AbstractRepository {

	@Query("select c from Overture c where c.id = ?1")
	Overture findOneById(int id);

	@Query("select c from Overture c")
	Collection<Overture> findManyAll();
}
