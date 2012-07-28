package in.dealo.web.util;

import java.util.UUID;
import java.util.regex.Pattern;

import org.springframework.util.StringUtils;

public abstract class StringUtil {
	public static boolean isEmpty(String str) {
		if(str == null || str.equals("") || str.trim().equals(""))
			return true;
		return false;
	}
	
	public static boolean isMobileValid(String mobile) {
		if(isEmpty(mobile)) 
			return false;
		mobile = mobile.trim();
		
		if(mobile.startsWith("+")){
			if(mobile.length() != 13){
				return false;
			}
		} 
		else if(mobile.startsWith("00")){
			if(mobile.length() != 14){
				return false;
			}
		} else if(mobile.startsWith("0")){
			if(mobile.length() != 11){
				return false;
			}
		}
		if(StringUtils.containsWhitespace(mobile))
			return false;
		
		for(int i=0; i < mobile.length(); ++i) {
			char c = mobile.charAt(i);
			if(!Character.isDigit(c) && c!='+')
				return false;
		}
		
		return true;
	}
	
	public static boolean isEmailValid(String email) {
		if(isEmpty(email))
			return false;
		email = email.trim();
		
		if(StringUtils.containsWhitespace(email))
			return false;
		
		if(email.indexOf('@') <=0 || email.indexOf('@') != email.lastIndexOf('@'))
			return false;
		return true;
	}
	
	public static boolean isPinCodeValid(String pincode) {
		
		if(isEmpty(pincode))
			return false;
		pincode = pincode.trim();
		
		if(StringUtils.containsWhitespace(pincode))
			return false;
		
		for(int i=0; i < pincode.length(); ++i) {
			char c = pincode.charAt(i);
			if(!Character.isDigit(c))
				return false;
		}
		
		return true;
	}
	
	public static String getRandomString(int length) {
		String str = UUID.randomUUID().toString();
		str.replaceAll("-", "");
		if(length <=0 || length > str.length())
			return str;
		return str.substring(0, length);
	}
	
	public static int ensureLength(int value, int length) {
		int ceiling = (int)Math.pow(10, length) - 1;
		int floor = (int)Math.pow(10, length -1 );
		
		while(value > ceiling) {
			value = value / 10;
		}
		
		while(value < floor) {
			value = value * 10;
		}
		
		return value;
	}
	
	public static void main(String[] args) {
		System.out.println(ensureLength(34, 1));
	}
}
