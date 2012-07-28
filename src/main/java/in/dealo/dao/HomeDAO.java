package in.dealo.dao;

import in.dealo.entity.Deal;


public interface HomeDAO {
	Deal getActiveDeal(Integer cityId);
}
