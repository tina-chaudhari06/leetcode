class Solution {
    public int repeatedStringMatch(String a, String b) {
        StringBuilder repeat = new StringBuilder(a);
        int count = 1;

        while(repeat.length() < b.length()){
            repeat.append(a);
            count++;
        }

        if(repeat.toString().contains(b)){
            return count;
        }

        repeat.append(a);
        count++;

        if(repeat.toString().contains(b)){
            return count;
        }
        return -1;
    }
}