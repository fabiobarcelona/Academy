public with sharing class MyFirstClass {
    public MyFirstClass() {
        System.debug(LoggingLevel.DEBUG, 'MyFirstClass');
        Account acc = [SELECT Id FROM Account LIMIT 1];
    }
}
