public with sharing class ContactAssets {
    
    @AuraEnabled(cacheable=true)
    public static string getContactAssets(string contactWalletAddress){
        if(contactWalletAddress.size() > 0){
            try {
                Id jobID = System.enqueueJob(new AlchemyCallout(contactWalletAddress));
            } catch (Exception e) {
                throw new AuraHandledException(e.getMessage());
            }
        }
    }
}
