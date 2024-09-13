/*Before Insert_ if account industry is nor null and having value as 'Media' ' then update rating as 'HOT'*/

/*After Insert_ Create related Opportunity when Account is created.*/


public class AccountTriggerHandler{
    //Update
    public static void beforeInsert(List<Account> newList){
        for (Account acc : newList) {
            // Check if Industry is not null and is 'Media'
            if (acc.Industry != null && acc.Industry == 'Media') {
                acc.Rating = 'Hot'; // Set Rating to 'HOT'
            }
            
        }
        
                 }


     public static void afterInsert(List<Account> newList){
         List<Opportunity> oppList = new List<Opportunity>();
         for (Account acc : newList) {
             Opportunity opp = new Opportunity();
              opp.Name = acc.Name;
              opp.AccountId = acc.Id;
              opp.StageName = 'Prospecting';
              opp.CloseDate = System.today();
              
              oppList.add(opp);
                }
                if(!oppList.isEmpty()){
                insert oppList;
            
            }
        }
    }