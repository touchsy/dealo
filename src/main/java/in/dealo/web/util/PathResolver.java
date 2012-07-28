package in.dealo.web.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class PathResolver {
	private static PathResolver instance = null;
	private Map<String, String> staticPaths  = new HashMap<String, String>();
    
    
	public static PathResolver getInstance() {
		if(instance == null) {
			instance = new PathResolver();
		}
		return instance;
	}
	
	private PathResolver() {
	}
	
	public String css(String path) {
		return resources("css/" + path);
	}
	
	public String js(String path) {
		return resources("js/" + path);
	}
	
	
	public String resources(String initialPath) {
        String rPath = staticPaths.get(initialPath);
        if (rPath == null) {
        	rPath = getPath(initialPath);
            staticPaths.put(initialPath, rPath);
        }
        return getStaticPath(rPath);
    }
    

    public String getRoot() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        
        return request.getRequestURL().toString();
    }


    private String getPath(String resourcePath) {
        InputStream input = ContextLoader.getCurrentWebApplicationContext().getServletContext().getResourceAsStream("/r/" + resourcePath);
        int bytes = 0;
        int len = 0;
        try {
			while((len = input.read(new byte[1024], 0, 1024)) > 0) {
				bytes+= len;
			}
		} catch (IOException e) {
			bytes = (int)(Math.random() * 10000);
		}
        String result = bytes + "/" + resourcePath;
        return result;
    }

    public String getEncodedUrl(String path) throws UnsupportedEncodingException {
            if (path.startsWith("http://")) {
                return URLEncoder.encode(path, "UTF-8");
            } else {
                return URLEncoder.encode(getRoot() + path, "UTF-8");
            }
    }

    private static String getStaticPath(String path) {
    	HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    	
        if (!"system property".equals(null)) {
            StringBuilder sb = new StringBuilder();
            sb.append("systemproperty");
            sb.append(path);
            return sb.toString();
        } else {
            return request.getRequestURL() + "/" + path;
        }
    }

}
