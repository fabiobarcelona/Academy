public with sharing class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer i, String lName) {
        List<Contact> contList = new List<Contact>();
        for(Integer j = 1; j <= i; j++) {
            Contact c = new Contact(
                FirstName = 'Test '+j,
                LastName = lName,
                Nivel__c = 'Normal',
                Usuario_BGG__c = '000'+j
            );
            contList.add(c);
        }
        return contList;
    }
}
