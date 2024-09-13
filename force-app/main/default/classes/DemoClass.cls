public class DemoClass {

    public static void mapmethod(){
        
        List<Account> acList = new List<Account>();
        
       
        Account ac1 = new Account(name = 'Akash');
        Account ac2 = new Account(name = 'Vishal');
      /*  Account ac3 = new Account(name = 'yatika');*/
          acList.add(ac1);
        acList.add(ac2);
      /*acList.add(ac3);*/

                   System.debug(acList);        
        
        
        for(Integer i=1;i<=10;i++){
            Account acLi = new Account(name = 'Akash'+i);
            acList.add(acLi);
        }
         System.debug(acList);
        
        
        
   /*     Map<String, Account> mapOfNameandAccount =new Map<String,Account>();
        
        mapOfNameandAccount.put('Akash',ac1);
        mapOfNameandAccount.put('Vishal',ac2);
        mapOfNameandAccount.put('yatika',ac3);
        
        System.debug(mapOfNameandAccount);
        
        
        System.debug(mapOfNameandAccount.keySet());
        
    */    
        
    }
}