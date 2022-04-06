trigger PreEjercicio on Contact (after update) {
    List<Task> taskList = new List<Task>();

    Map<Id, Account> accountMap = new Map<Id, Account>(
        [SELECT Name FROM Account WHERE Codigo_de_tienda__c <> null 
            AND RecordTypeId IN 
                (SELECT Id FROM RecordType WHERE Name = 'Física')
        ]);

    for(Contact contact : (List<Contact>)Trigger.New) {
        Account tienda = accountMap.get(contact.Tienda_habitual__c);

        if(Trigger.oldMap.get(contact.Id).Phone != contact.Phone) {
            Task task = new Task();
            task.WhoId = contact.Id;
            task.Subject = 'Tarea Ejemplo';
            task.Type = 'Call';
            task.AccountName__c = tienda.Name;
            taskList.add(task);
        }
    }

    insert taskList;
}