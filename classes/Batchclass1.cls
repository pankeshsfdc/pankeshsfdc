@istest
public class Batchclass1 {
 @testsetup
    public static void stetuptestdate(){
         Test.startTest();
     List<Account> accnew=new List< account>();
        For(integer i=0; i<=200; i++){
           Account acc=new Account();
           acc.Name='test'+i;
            acc.Rating='Closed won';
            acc.AccountNumber='123';
            acc.Amount__c=54546;
            acc.Employee_sallary__c=636;
            accnew.add(acc);
            
        }
        insert accnew;
        Test.stopTest();
    }
    @istest
    public static void Bactchclass1(){
        Test.startTest();
        Database.executeBatch(new Bactchclass1(),2000);
        Test.stopTest();
    }
}