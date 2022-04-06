@isTest
public with sharing class TestRestrictContactByName {
    @isTest static void correctName() {
        Contact cont = new Contact(
            FirstName = 'John',
            LastName = 'Peterson',
            Usuario_BGG__c = '30304',
            Nivel__c = 'Normal'
        );

        insert cont;
        Test.startTest();
        Database.DeleteResult result = Database.delete(cont, false);
        Test.stopTest();
        System.assert(result.isSuccess());
    }

    @isTest static void incorrectName() {
        Contact cont = new Contact(
            FirstName = 'John',
            LastName = 'INVALIDNAME',
            Usuario_BGG__c = '30304',
            Nivel__c = 'Normal'
        );

        insert cont;
        Test.startTest();
        Database.DeleteResult result = Database.delete(cont, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+cont.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
}
