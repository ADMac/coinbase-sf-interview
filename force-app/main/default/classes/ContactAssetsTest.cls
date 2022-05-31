@isTest
private without sharing class ContactAssetsTest {
    
    @TestSetup
    static void makeData(){
        //
    }

    @isTest
    static void getContactAssets_posTest() {
        
        Test.startTest();
        ContactAssets.getContactAssets('allistermckenzie.eth');
        Test.stopTest();

    }

    @IsTest
    static void getContactAssets_negTest(){
        
        Test.startTest();
        System.runAs(contextuser){
            
        }
        Test.stopTest();
        
    }
}
