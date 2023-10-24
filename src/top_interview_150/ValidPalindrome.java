package top_interview_150;
public class ValidPalindrome {
    public boolean isPalindrome(String s) {

        s = s.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
        StringBuilder sb = new StringBuilder(s);
        sb.reverse();

        return sb.toString().equals(s);
    }
}

