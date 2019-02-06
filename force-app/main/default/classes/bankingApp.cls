//////////////////////////////////
//	Banking Application Methods
//	Author: Dennis Vargas
//	Date: 2/4/2019
//////////////////////////////////

public class bankingApp{

   public class Project0BankingApp {
    
    //Check if an account is overdrawn and change the status of the account accordingly.
    public static void isOverdrawn(){
        //All accounts that have a balance below 0
        List<Account> acc = [SELECT Balance__c FROM Account WHERE Balance__c < 0];
        
        //Iterate over each element and changes the account status
        for(Account c: acc){
            c.Account_Status__c = 'Overdrawn';
        }
        
        update acc;
    }
    
    //Create a new transaction relating to the account.
    public static void newTransaction(String accName){
        decimal amount, currentBal;
        Id accId;
        String transType;
        
        List<Account> accBal = [SELECT id, balance__c FROM account WHERE name = :accName];
        
        for(Account acc: accBal){    
        	accId = acc.Id;
        	break;
        }
        
		//TransactionType and amount. Need to filter ID
        List<Transaction__c> trans = [SELECT transaction_Type__c, amount__c FROM transaction__c WHERE account__c = :accId];
        

        
        for(Transaction__c tr: trans){
            amount = tr.amount__c;
            transType = tr.transaction_Type__c;
            system.debug(transType);
            break;
        }
        
		for(Account acc: accBal){
            switch on transType{
                when 'Withdraw'{
                    acc.balance__c -= amount;
            		currentBal = acc.balance__c;
        			break;
                }
                when 'Deposit'{
                	acc.balance__c += amount;
            		currentBal = acc.balance__c;
        			break;
                }
                
            }
    		
        }
            
        update accBal;
    }
    
    //The 3rd method, updateBalance() is combined into the newTransaction() method

}