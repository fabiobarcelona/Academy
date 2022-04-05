public with sharing class AccountService {
    public Account createAccount( String accountName, String accountNumber, String tickerSymbol ) {
      Account newAcct = new Account(
        Name = accountName,
        AccountNumber = accountNumber,
        TickerSymbol = tickerSymbol,
        CIF__c = '12345678A',
        Fecha_contrato__c = Date.today()
      );
      return newAcct;
    }
}