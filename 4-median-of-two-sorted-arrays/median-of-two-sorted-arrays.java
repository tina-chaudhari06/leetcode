class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int n1 = nums1.length;
        int n2 = nums2.length;
        int k = 0, i = 0, j = 0;

        double[] arr = new double[n1 + n2];

        while(i < n1 && j < n2){
            if(nums1[i] < nums2[j]){
                arr[k] = nums1[i];
                i++;
                k++;
            }else{
                arr[k] = nums2[j];
                j++;
                k++;
            }
        }

        while(i < n1){
            arr[k] = nums1[i];
            i++;
            k++;
        }

        while(j < n2){
            arr[k] = nums2[j];
            j++;
            k++;
        }

        if(arr.length % 2 != 0) return arr[arr.length/2];
        return (arr[arr.length/2 - 1] + arr[arr.length/2])/2;
    }
}