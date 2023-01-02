public class Opplihandler {
    public static void oplisample(List<OpportunityLineItem>oppnewlist){
        	List<OpportunityLineItem>oilList=[Select Opportunity.Accountid,Opportunity.Account.Name From OpportunityLineItem 
                                             Where Id=:oppnewlist And Opportunity.AccountId !=null];
        List<Asset>assettocreate=new List<Asset>();
        for(OpportunityLineItem oli : oilList) {
          Asset assObj = new Asset();
           assObj.Name = oli.Opportunity.Account.Name+' OpportunityLineItem';
          assObj.AccountId = oli.Opportunity.AccountId;
          assetToCreate.add(assObj);
        }
        insert assettocreate;
    }

}