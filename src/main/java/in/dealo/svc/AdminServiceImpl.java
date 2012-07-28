package in.dealo.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private CacheService cacheService;
	
	@Override
	@Scheduled(fixedDelay=3600000)
	public void clearAllCache() {
		cacheService.clearCache();
	}
	
	@Override
	@Scheduled(fixedDelay=300000)
	public void clearShortCache() {
		cacheService.clearShortLivedCache();
	}
}
