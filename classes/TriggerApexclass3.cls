public class TriggerApexclass3 {
    public static void triggerhandler (List<OpportunityLineItem>oppline){
        List<OpportunityLineItem> oliList = [SELECT Opportunity.AccountId, Opportunity.Account.Name
                                             FROM OpportunityLineItem WHERE Id = 
                                             :oppline AND Opportunity.AccountId != null];
        List<Asset>assettocreate=new List<Asset>();
        
        
    }

}