package in.dealo.dao;

import java.util.List;

import in.dealo.entity.City;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = City.class)
public interface CityDAO {
	City findCityByUrl(String url);
	List<City> findCityByEnabled(Boolean enabled);
}
