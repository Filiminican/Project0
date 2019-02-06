public class classwork{

    public static Integer[] rotateLeftNTimes(Integer[] array1, Integer n) { 
        integer temp;

            for (integer i = 0; i < n; i++)
            {
                temp = array1[0];

                for (int j = 0; j < array1.size()-1; j++) 
                {
                    array1[j] = array1[j+1];
                }

                array1[array1.size() - 1] = temp;
            }

        return array1;
    }

}