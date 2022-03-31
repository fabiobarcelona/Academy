public with sharing class AccountHandler {
    public static Account insertNewAccount(String accName) {
        try {
            Account acc = new Account(
                Name=accName,
                CIF__c = '12345678A',
                Fecha_contrato__c = Date.today()
            );

            insert acc;
            return acc;
        } catch (DmlException e) {
            System.debug(LoggingLevel.WARN, 'Error inserting new account: ' + e.getMessage());
            return null;
        }
    }
}