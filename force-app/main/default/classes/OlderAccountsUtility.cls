public with sharing class OlderAccountsUtility {
    public static void updateOlderAccounts() {
        // Get the 5 oldest accounts
        Account[] oldAccounts = [SELECT Id, Description, CIF__c, Fecha_contrato__c FROM Account ORDER BY CreatedDate ASC LIMIT 5];
        // loop through them and update the Description field
        for (Account acct : oldAccounts) {
            acct.Description = 'Heritage Account';
            acct.Fecha_contrato__c = Date.newInstance(2020, 2, 9);
            acct.CIF__c = '12345678A';
        }
        // save the change you made
        update oldAccounts;
    }
}