// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.City;
import in.dealo.svc.CitySvc;
import java.util.List;

privileged aspect CitySvc_Roo_Service {
    
    public abstract long CitySvc.countAllCitys();    
    public abstract void CitySvc.deleteCity(City city);    
    public abstract City CitySvc.findCity(Integer id);    
    public abstract List<City> CitySvc.findAllCitys();    
    public abstract List<City> CitySvc.findCityEntries(int firstResult, int maxResults);    
    public abstract void CitySvc.saveCity(City city);    
    public abstract City CitySvc.updateCity(City city);    
}
