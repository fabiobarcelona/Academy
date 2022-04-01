//Guardamos query en una variable para reutilizarla y creamos Maps de juegos de mesa y productos
List<Boardgame__c> boardGames = [SELECT Id, Name FROM Boardgame__c];

Map<Id, Boardgame__c> bgMap = new Map<Id, Boardgame__c>();
Map<Id, Product2> prMap = new Map<Id, Product2>();

for(Boardgame__c tmpGame : boardGames) {
    bgMap.put(tmpGame.Id, tmpGame);
}

for(Product2 tmpProduct : [SELECT Name, Juego_de_mesa__r.Id, Id FROM Product2]) {
    prMap.put(tmpProduct.Juego_de_mesa__r.Id, tmpProduct);
}

//Recorremos los registros de juego de mesa y si no encontramos el Id del juego en el map de productos
//Insertamos un producto nuevo que haga referencia al juego
for(Boardgame__c tmpGame2 : boardGames) {
    if(prMap.containsKey(tmpGame2.Id)) {
        continue;
    } else {
        insert new Product2(Name=tmpGame2.Name, Juego_de_mesa__c=tmpGame2.Id);
    }
}