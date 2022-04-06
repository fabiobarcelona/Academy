@isTest
public with sharing class TestVerifyDate {
    @isTest static void dateWithin30Days() {
        Date date1 = Date.newInstance(2020, 2, 2);
        Date date2 = Date.newInstance(2020, 2, 9);
        Date dateFinal = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2,dateFinal);
    }

    @isTest static void dateNotWithin30Days() {
        Date date1 = Date.newInstance(2020, 2, 2);
        Date date2 = Date.newInstance(2020, 10, 9);
        Date dateFinal = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(Date.newInstance(2020, 2, 29 ), dateFinal);
    }
}
