package in.dealo.svc;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

@Service("CacheService")
public class CacheServiceImpl implements CacheService {

	@Override
	@CacheEvict(allEntries=true, value={"default", "deals", "shortLived"})
	public void clearCache(){
		System.out.println("************** Clearing all Cache ****************");
	}
	
	
	@Override
	@CacheEvict(allEntries=true, value="shortLived")
	public void clearShortLivedCache() {
		System.out.println("************** Clearing short lived Cache ****************");
	}

}
