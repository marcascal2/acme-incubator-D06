
package acme.components;

import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.banners.Banner;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface BannerRepository extends AbstractRepository {

	@Query("select count(b) from Banner b where b.card is not null")
	int countBannersWithCard();

	@Query("select b from Banner b where b.card is not null")
	List<Banner> findManyBannersWithCard(PageRequest pageRequest);

	default Banner findRandomBanner() {
		Banner result;
		int bannerCount, bannerIndex;
		ThreadLocalRandom random;
		PageRequest page;
		List<Banner> list;

		bannerCount = this.countBannersWithCard();
		random = ThreadLocalRandom.current();
		if (bannerCount > 0) {
			bannerIndex = random.nextInt(0, bannerCount);
			page = PageRequest.of(bannerIndex, 1);
			list = this.findManyBannersWithCard(page);
			result = list.isEmpty() ? null : list.get(0);
		} else {
			result = null;
		}

		return result;
	}

}
