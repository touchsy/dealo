package in.dealo.svc;

import java.util.List;

import in.dealo.entity.City;

import org.springframework.roo.addon.layers.service.RooService;

@RooService(domainTypes = { in.dealo.entity.City.class })
public interface CitySvc {
	City findCityByUrl(String url);
	List<City> findActiveCities();
}
