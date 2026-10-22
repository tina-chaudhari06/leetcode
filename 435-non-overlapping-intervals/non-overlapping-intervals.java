class Solution {
    public int eraseOverlapIntervals(int[][] intervals) {
        int n = intervals.length;

        Arrays.sort(intervals, (a,b) -> a[1] - b[1]);

        int cnt = 0;
        int lastend = Integer.MIN_VALUE;

        for(int i = 0; i < n; i++){
            if(intervals[i][0] >= lastend){
                cnt++;
                lastend = intervals[i][1];
            }
        }
        return n - cnt;
    }
}