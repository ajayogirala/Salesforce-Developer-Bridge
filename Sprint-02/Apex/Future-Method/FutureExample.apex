public class FutureExample {

    @future
    public static void updateBook(Id bookId) {

        Book__c b =
            [SELECT Id, Name
             FROM Book__c
             WHERE Id = :bookId];

        b.Name = b.Name + ' Updated';

        update b;
    }

}
