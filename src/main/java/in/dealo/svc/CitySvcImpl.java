package in.dealo.svc;

import java.util.List;

import org.springframework.cache.annotation.Cacheable;

import in.dealo.entity.City;


public class CitySvcImpl implements CitySvc {
	
	@Override
	@Cacheable(value="default", key="(#root.methodName).concat(#url)")
	public City findCityByUrl(String url) {
		return cityDAO.findCityByUrl(url);
	}
	
	@Override
	@Cacheable(value="default", key="#root.methodName")
	public List<City> findActiveCities() {
		return cityDAO.findCityByEnabled(true);
	}
}
