
/**
 *
 * @author pradeep.kk
 */
public class Max_Min_Distance {

    public void Distance(int[] nums) {
        int num[] = nums;
        int i;
        int temp, count = 0;
        for (; count != num.length;) {
            int m = 0, max = 0;

            for (i = count + 1; i < num.length; i++) {
                if (m < num[i]) {
                    m = num[i];
                }
                max = m;

            }

            num[count] = max;
            count++;

        }

        for (i = 0; i < nums.length; i++) {
            System.out.println(" Array " + num[i]);
        }

    }

    public static void main(String args[]) {
        int num[] = {6, 7, 4, 3, 5, 2};
        Max_Min_Distance obj = new Max_Min_Distance();
        obj.Distance(num);

    }
}
