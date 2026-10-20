class Solution {
    public int singleNonDuplicate(int[] nums) {
        int num = 0;
        for(int i = 0; i < nums.length - 1; i++){
            if(nums[i] != nums[i+1]){
                return nums[i];
            }
            i++;
        }
        return nums[nums.length -1];
    }
}