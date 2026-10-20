class Solution {
    public int singleNonDuplicate(int[] nums) {
        int n = nums.length;
        if(n == 1) return nums[0];

        int s = 0;
        int e = n - 1;

        while(s <= e){
            int mid = (s + e)/2;

            if(mid == 0 && nums[mid] != nums[mid+1]) return nums[mid];
            if(mid == n-1 && nums[mid-1] != nums[mid]) return nums[mid];
            
            if(nums[mid - 1] != nums[mid] && nums[mid] != nums[mid+1]){
                return nums[mid];
            }

            if(mid % 2 == 0){
                if(nums[mid - 1] == nums[mid]){
                    e = mid - 1;
                }else{
                    s = mid + 1;
                }
            }else {
                if(nums[mid - 1] == nums[mid]){
                    s = mid + 1;
                }else{
                    e = mid - 1;
                }
            }
        }

        return -1;
    }
}