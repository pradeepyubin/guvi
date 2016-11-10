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

    public int Distance(int[] nums)
      {
            int maxOne = 0;
            int maxTwo = 0;
            int smallest = nums[0];
            for (int n : nums) {
                    if (maxOne < n) {
                     maxTwo = maxOne;
                     maxOne = n;
                 } else if (maxTwo < n) {
                     maxTwo = n;
                                        }
                                }

            for (int i = 1; i < nums.length; i++) {
             if (nums[i] < smallest) {
                smallest = nums[i];
                                     }

                                                  }

        int min_d = maxOne - maxTwo;
        int Max_d = maxOne - smallest;
        
        System.out.println("Min Distance: between "+maxOne+"  and  "+maxTwo+" is "+ min_d);
        System.out.println("Max Distance: between "+maxOne+"  and  "+smallest+" is "+ Max_d);
        return 0;
    }

    public static void main(String args[]) {
        int num[] = {33,7,91,73,58,5,12,51};
        Max_Min_Distance obj = new Max_Min_Distance();
        obj.Distance(num);

    }
}
