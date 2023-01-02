public class lookuphandler {
    public static void lookupsample(List<Account>acclist){
      List<Messaging.SingleEmailMessage>emaillist=new List<Messaging.SingleEmailMessage>();
        Set<Id> owerids=new Set<Id>();
        for(Account acc:acclist){
          owerids.add(acc.OwnerId);
        }
        Map<Id,User>ownermap=new Map<Id,User>([Select Email From User Where id In:owerids]);
        For(Account acc:acclist){
            Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
            mail.toaddresses=new string[]{ownermap.get(acc.OwnerId).Email};
           mail.setSubject('New Account Created');
            String body = 'An account has been created and name is '+acc.Name;
mail.setPlainTextBody(body);
            emaillist.add(mail);
        }
        If(!emaillist.isEmpty()){
            Messaging.sendEmail(emailList);
        }
            
        
        
        
    }

}