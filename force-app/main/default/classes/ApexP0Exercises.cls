//////////////////////////////////
//	Project 0
//	Author: Dennis Vargas
//	Date: 2/4/2019
//////////////////////////////////

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
            List<String> stack = new List<String>();
            bool isBalanced = true;

            for(Integer i = 0; i < s.size(); i++){
                if(s.charAt(i) == '('){
                    stack.add('(');
                }else if(s.charAt(i) == '['){
                    stack.add('[');
                }else if(s.charAt(i) == '{'){
                    stack.add('{');
                }else if(s.charAt(i) == ')'){
                    for(String s: stack){
                        if(stack.isEmpty()){
                            return false;
                        }else if(){

                        }
                    }
                }else if(s.charAt(i) == ']'){

                }else if(s.charAt(i) == '}'){

                }
            }

            return isBalanced;
      }

      }

                // 6. Create a method that retrieves a list of all accounts and updates those accounts.
            //     Create a custom field on the Account standard object called Size__c that will be a 
            //     picklist containing small/medium/large.
            //     Create a method that retrieves a list of all accounts. 
            //         - If an account has between 1-1000 employees then it is classified as small.
            //         - If an account has between 1001-10000 employees it is classified as medium.
            //         - If an account has more than 10000 employees it is classified as large.
            //     Update the Size__c field on each account to reflect the amount of employees in the Account.


            public class QuestionSix {
                public static void account(){
                    List<Account> acc = new List<Account>();
                    
                    for(Account c: [SELECT Id, Size__c, NumberOfEmployees FROM Account]){
                        if(c.NumberOfEmployees >= 1 && c.NumberOfEmployees <= 1000){
                            c.Size__c = 'small';
                        }
                        else if(c.NumberOfEmployees >= 1001 && c.NumberOfEmployees <= 10000){
                            c.Size__c = 'medium';
                        }
                        else if(c.NumberOfEmployees > 10000){
                            c.Size__c = 'large';
                        }
                        
                        acc.add(c);
                    }
                    
                    database.update(acc);
                    //update acc;
                    
                    
                }
            }

        /* 
        * 7. Create a method that will find all leads that contain 'ca' in their fields. 
        * If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
        * Converted' and their description should display the message, "We are no longer doing 
        * business in California."
        */
        public static void updateCALeads( ) {
            List<Lead> l = [SELECT Status, Description FROM Lead WHERE Address LIKE '%ca%'];

            for(Lead lea: l){
                lea.Status = 'Closed - Not Converted';
                lea.Description = 'We are no longer doing business in California.'
            }

            update l;
        }

        /*
        * 8. Create a method that will find all Opportunities which have already passed their Close Date 
        * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
        * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
        */
        public static void closePastDueOpportunities( ) {
            List<Opportunities> opp = [SELECT CloseDate, StageName FROM Opportunities WHERE CloseDate < TODAY];

            for(Opportunities o: opp){
                o.StageName = 'Closed Lost';
            }

            update opp;
        }


    
}