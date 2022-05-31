public without sharing class AlchemyCallout implements Queueable, Database.AllowsCallouts {

    /* 
        TODO 
        Get transfers by owner
        Get transfers by NFT
        Get discord verifications
    */

    public string ownerAddress;
    public List<string> collectionAddresses; 

    public AlchemyCallout(String address) {
        ownerAddress = address;
    }

    //@future(callout=true)
    //public static void getNFTsByOwner() {
    public void execute(QueueableContext qc) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://eth-mainnet.alchemyapi.io/v2/demo/getNFTs/?owner=' + ownerAddress);
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody()); 
    }
/*
    public static void getNFTCollectionsByOwner(String ownerAddress, List<String> collections) {
        // compile string of contract addresses
        String contractAddresses = '';
        for(Integer i = 0, j = collections.size(); i < j; i++) {
            contractAddresses += '&contractAddresses[]=' + collections[i];
        }

        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Get_NFTs/' + ownerAddress + contractAddresses);
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
    }

    public static void getNFTsForCollection(String collectionAddress) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Get_Collection/' + collectionAddress);
        req.setMethod('GET');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
    }
*/
}
