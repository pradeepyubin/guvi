/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pradeep.kk
 */
public class Max_Min_Distance {

    public int Distance(int[] nums) {
        int maxOne = 0;
        int maxTwo = 0;
        int smallest = nums[0];
        int index = 0;
        for (int j=0;j<nums.length;j++)
        {
            if (maxOne < nums[j]) {
                maxTwo = maxOne;
                maxOne = nums[j];
                index = j;
                
            } else if (maxTwo < nums[j]) {
                maxTwo = nums[j];
            }
        }

        for (int i = 1; i < nums.length; i++) {
            if (nums[i] < smallest) {
                smallest = nums[i];
            }

        }

        int Max_d = maxOne - smallest;

        System.out.println("Max gap is  between " + maxOne + "  and  " + smallest + " which is " + Max_d+" whose index is "+index);
        return 0;
    }

    public static void main(String args[]) {
        int num[] = {5, 3, 12, 78, 1, 91};
        Max_Min_Distance obj = new Max_Min_Distance();
        obj.Distance(num);

    }
}
