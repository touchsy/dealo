package in.dealo.util;

import java.util.Date;

import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class DateUtil {
private static DateUtil instance = null;
	private DateTimeFormatter ddmmyyHyphened = DateTimeFormat.forPattern("dd-MM-yyyy");
	private DateTimeFormatter ddmmyy = DateTimeFormat.forPattern("ddMMyyyy");
	
	public static DateUtil getInstance() {
		if(instance == null) {
			instance = new DateUtil();
		}
		return instance;
	}
	
	private DateUtil() {
	}
	
	public String dateToString(Date date) {
		return ddmmyy.print(date.getTime());
	}
	
	public Date stringToDate(String date, String pattern){
		return ddmmyy.parseDateTime(date).toDate();
	}
}
