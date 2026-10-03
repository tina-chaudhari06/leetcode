class Solution {
    public int repeatedStringMatch(String a, String b) {
        String repeat = a;
        int count = 1;

        while(repeat.length() < b.length()){
            repeat += a;
            count++;
        }

        if(repeat.contains(b)){
            return count;
        }

        repeat += a;
        count++;

        if(repeat.contains(b)){
            return count;
        }
        return -1;
    }
}