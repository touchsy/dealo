package in.dealo.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderSvcImpl implements EmailSenderSvc {

	@Autowired(required=false)
	private MailSender mailSender;

	@Override
	@Async
	public void sendMessage(String mailFrom, String subject, String mailTo,
			String message) {

		SimpleMailMessage mailMessage = new SimpleMailMessage();

		mailMessage.setFrom(mailFrom);
		mailMessage.setTo(mailTo);
		mailMessage.setSubject(subject);
		mailMessage.setText(message);
		mailSender.send(mailMessage);
	}

	public MailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}

}
