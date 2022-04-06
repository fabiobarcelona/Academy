public with sharing class Academy {

    /**
    * @description Método estático que devuelva un mapa con el identificador de cada producto y el registro del Boardgame__c correspondiente.
    * @author Fabio Barcelona García | 04-03-2022 
    * @return Map<Id, Boardgame__c> 
    **/
    public static Map<Id, Boardgame__c> ex2() {

        List<Product2> prodList = new List<Product2>([SELECT Id, Juego_de_mesa__c FROM Product2 WHERE Juego_de_mesa__c <> null]);
        List<Boardgame__c> boardGameList = new List<Boardgame__c>([SELECT Id FROM Boardgame__c]);

        Map<Id, Boardgame__c> prBgMap = new Map<Id, Boardgame__c>();

        for(Boardgame__c game : boardGameList) {
            for(Product2 prod : prodList) {
                if(prod.Juego_de_mesa__c == game.Id) {
                    prBgMap.put(prod.Id, game);
                }
            }
        }

        return prBgMap;
    }
}