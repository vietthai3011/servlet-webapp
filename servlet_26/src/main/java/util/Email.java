package util;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
    // testjava123321@gmail.com
    // lbjj nfwi pnpk xddh

    static final String from = "testjava123321@gmail.com";
    static final String password = "lbjj nfwi pnpk xddh";

    public static boolean sendEmail(String to, String subject, String content) {
        try {

            // Khai báo thuộc tính
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587"); // TSL 587 SSL 465
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");

            // tạo ra authenticator
            Authenticator auth = new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            };

            // Phiên làm việc
            Session session = Session.getInstance(props, auth);

            MimeMessage message = new MimeMessage(session);
            // Kiểu nội dung
            message.addHeader("context-type", "text/html; charset=UTF-8");

            // Người nhận
            message.setFrom(from);

            // Người gửi
            message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(to, false));

            message.setSubject(subject);

            // Quy định ngày gửi
            message.setSentDate(Date.from(LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant()));

            // Quy định email phản hồi
            message.setReplyTo(InternetAddress.parse(from, false));

            // Nội dung
            // message.setText("Hello");
            // message.setContent("<h1>Hello</h1>", "text/html; charset=UTF-8");
            message.setContent(content, "text/html; charset=UTF-8");

            Transport.send(message);
            System.out.println("Gửi thành công");

            return true;
        } catch (MessagingException ex) {
            ex.printStackTrace();
            return false;
        }

    }

}
