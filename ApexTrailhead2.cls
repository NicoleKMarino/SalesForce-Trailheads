public class AccountHandler {
    
    public static Account insertNewAccount(String Name){
        try {
            Account acct = new Account();
            acct.Name = Name;
            
            // Insert the account 
            insert acct;
            return acct;
        } catch (DmlException e) {
            return null;
        }
    }
}