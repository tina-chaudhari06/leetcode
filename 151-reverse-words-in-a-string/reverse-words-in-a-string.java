class Solution {
    public String reverseWords(String s) {
        String[] a = s.trim().split("\\s+");
        int n = a.length;
        int i = 0;
        int j = n - 1;
        while (i < j){
            String temp = a[i];
            a[i] = a[j];
            a[j] = temp;
            i++;
            j--;
        }

        s = String.join(" ", a);

        return s;
    }
}