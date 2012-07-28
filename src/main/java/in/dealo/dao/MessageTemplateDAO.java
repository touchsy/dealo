package in.dealo.dao;

import in.dealo.entity.MessageTemplate;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = MessageTemplate.class)
public interface MessageTemplateDAO {
}
