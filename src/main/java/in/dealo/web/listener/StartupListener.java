package in.dealo.web.listener;

import in.dealo.util.DateUtil;
import in.dealo.web.util.PathResolver;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartupListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		sce.getServletContext().setAttribute("path", PathResolver.getInstance());
		sce.getServletContext().setAttribute("dateUtil", DateUtil.getInstance());

	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub

	}

}
