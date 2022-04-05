@isTest
public with sharing class TestVerifyDate {
    @isTest static void dateWithin30Days() {
        Date date1 = Date.newInstance(2020, 9, 2);
        Date date2 = Date.newInstance(2020, 14, 2);
        Date dateFinal = VerifyDate.CheckDates(date1test, date2test);
        System.assertEquals(date2,dateFinal);
    }
}
