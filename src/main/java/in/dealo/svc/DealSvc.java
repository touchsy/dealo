package in.dealo.svc;

import in.dealo.entity.Deal;

import org.springframework.roo.addon.layers.service.RooService;

@RooService(domainTypes = { in.dealo.entity.Deal.class })
public interface DealSvc {
	Deal getActiveDeal(Integer cityId);
	Deal getDealByUrl(String pageUrl);
	Integer getDealSoldCount(Integer dealId);
	void evictCacheDealByUrl(String pageUrl);
	void evictCacheActiveDeal(Integer cityId);
	void evictCacheDealCount(Integer dealId);
}
