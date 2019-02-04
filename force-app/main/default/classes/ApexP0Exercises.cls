///////////////////////
// Dennis forgot his header
// This is in the new branch. Now it is in the master. YAY PULL REQUeSTS.
// Dennis likes to code. He's adding some shitstuff to this group project. 
///////////////////////

public class ApexP0Exercises {
    
    /*
     * 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0 	Output: 0
     * Input: 1		Output: 1
     * Input: 2 	Output: 1
     * Input: 10	Output: 55
    */
    public static Integer nFibonacci(Integer n){
        Integer first = 0;
        Integer second = 1;
        Integer third;
        
        if(n == 0)
            return first;
        else if(n == 1)
            return second;
        else if(n > 1){
            for(Integer i = 2; i <= n; ++i){
                third = first + second;
                first = second;
                second = third;
            }
			return third;
        }else
            return null;
    }
    
    /*
     * 2. Sort an array of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1] 	Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1] 		Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
    public static Integer[] sortArray(Integer[] intList) {
        for(Integer i = 0; i < intList.size(); i++){
            for(Integer j = 0; j < intList.size() - i - 1; j++){
                if(intList[j] > intList[j + 1]){
                    Integer temp = intList[j];
                    intList[j] = intList[j + 1];
                    intList[j + 1] = temp;
                }
            }
        }
        return intList;
    }

	/*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0	Output: 1
     * Input: 1	Output: 1
     * Input: 3	Output: 6
    */
    public static Integer nFactorial(Integer n) {
        if(n <= 1)
            return 1;
        
        return nFactorial(n - 1) * n;
    }

	/*
     * 4. Rotate left
     * Given an array, array, and an integer, n, rotate the values in array left n times and return array
     * Test Cases:
     * Input: [1,2,3,4,5], 1	Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 6	Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 3	Output: [4,5,1,2,3]
    */
    public static Integer[] rotateLeftNTimes(Integer[] array1, Integer n) { //Had to rename array variable because it's a reserved word.
        Integer[] array2 = new list<Integer>();
        Integer[] temp = new list<Integer>();

        for(Integer i = 0; i < n; i++){
            array2 = new list<Integer>();
            for(Integer j = 1; j < array1.size(); j++){
                array2.add(array1[j]);
            }
            array2.add(array1[0]);  
        }

        return array2;
    }
//     Integer[] array1 = new list<Integer>();
// array1.add(1);
// array1.add(2);
// array1.add(3);
// array1.add(4);
// array1.add(5);
// system.debug(ApexP0Exercises.rotateLeftNTimes(array1, 3));

     /* 5. Balanced Brackets
      * A bracket is any one of the following: (, ), {, }, [, or ]
      * 
      * The following are balanced brackets:
      *    ( )
      *    ( ) ( )
      *    ( ( ) )
      *    ( { [ ] } )
      *
      * The following are NOT balanced brackets:
      *   (
      *   )
      *   ( ( )
      *   ( [ ) ]
      *
      * Return true if balanced
      * Return false if not balanced
      */
      public static Boolean bracketsAreBalanced(String s) {
          List<String> stack = new List<String>;
          stack.add(s.charAt(0));  

          for(Integer i = 1; i < s.size(); i++){
              if(stack.get(0) = s.charAt(i)){
                  
              }
          }

        //   for(Integer i = 0; i <= s.length(); i++){
        //       for(Integer j = 1; j <= s.length(); j++){
        //         if(s.charAt(i) == '('){
        //             if(s.charAt(j) !=)
        //         }else if(s.charAt(i) == '['){

        //         }else if(s.charAt(i) == '{'){
              
        //         }
        //       }
        //   }

        //   return true;
      }

    
}