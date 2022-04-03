public with sharing class Academy {

    /**
    * @description Método estático que devuelva un mapa con el identificador de cada producto y el registro del Boardgame__c correspondiente.
    * @author Fabio Barcelona García | 04-03-2022 
    * @return Map<Id, Id> 
    **/
    public static Map<Id, Id> ex2() {

        Map<Id, Id> prMap = new Map<Id, Id>();

        for(Product2 tmpProduct : [SELECT Juego_de_mesa__c FROM Product2 WHERE Juego_de_mesa__c <> null]) {
            prMap.put(tmpProduct.Id, tmpProduct.Juego_de_mesa__c);
        }

        return prMap;
    }
}
