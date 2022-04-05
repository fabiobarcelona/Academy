public with sharing class MyFirstClass {
    public static void myFirstMethod() {
        System.debug(LoggingLevel.DEBUG, 'MyFirstClass');
        Account acc = [SELECT Id FROM Account LIMIT 1];
    }
}
