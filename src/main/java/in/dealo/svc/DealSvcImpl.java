package in.dealo.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import in.dealo.dao.HomeDAO;
import in.dealo.entity.Deal;


public class DealSvcImpl implements DealSvc {
	
	@Autowired
	private HomeDAO homeDAO;

	@Override
	@Cacheable(value="deals", key="'city_'.concat(#cityId)")
	public Deal getActiveDeal(Integer cityId) {
		return homeDAO.getActiveDeal(cityId);
	}
	
	@Override
	@Cacheable(value="deals", key="#pageUrl")
	public Deal getDealByUrl(String pageUrl) {
		return dealDAO.findByPageUrl(pageUrl);
	}
	
	@Override
	@Cacheable(value="shortLived", key="'dealsoldcount_'.concat(#dealId)")
	public Integer getDealSoldCount(Integer dealId) {
		Deal deal = findDeal(dealId);
		return deal.getCouponsSold();
	}
	
	
	@Override
	@CacheEvict(value="deals", key="#pageUrl")
	public void evictCacheDealByUrl(String pageUrl) {
	}
	
	@Override
	@CacheEvict(value="deals", key="'city_'.concat(#cityId)")
	public void evictCacheActiveDeal(Integer cityId) {
	}
	
	@Override
	@CacheEvict(value="shortLived", key="'dealsoldcount_'.concat(#dealId)")
	public void evictCacheDealCount(Integer dealId) {
	}
}
