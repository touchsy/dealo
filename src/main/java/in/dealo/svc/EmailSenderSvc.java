package in.dealo.svc;

public interface EmailSenderSvc {
	void sendMessage(String mailFrom, String subject, String mailTo,String message);
}
