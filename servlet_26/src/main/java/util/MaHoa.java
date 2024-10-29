package util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class MaHoa {

    public static String toSHA1(String password) {
        String salt = "abdahbdafbafnauaydabdyahdahbd";
        String result = null;

        password += salt;

        try {
            byte[] databyte = password.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.getEncoder().encodeToString(md.digest(databyte));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("123456"));
    }
}
