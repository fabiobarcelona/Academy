public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String firstOrLastName) {
        List<List<SObject>> searchList = [FIND :firstOrLastName IN NAME FIELDS RETURNING Contact(LastName), Lead(LastName)];
        return searchList;
    }
}
