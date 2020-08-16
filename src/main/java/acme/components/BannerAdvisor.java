
package acme.components;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import acme.entities.banners.Banner;

@ControllerAdvice
public class BannerAdvisor {

	@Autowired
	private BannerRepository repository;


	@ModelAttribute("bannerAdvisor")
	public Banner getBanner() {
		Banner result;

		result = this.repository.findRandomBanner();

		return result;
	}

}
