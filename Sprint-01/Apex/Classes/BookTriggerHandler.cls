public class BookTriggerHandler {

    // Prevent duplicate ISBN before inserting books
    public static void preventDuplicateBooks(List<Book__c> newBooks) {

        Set<String> isbnSet = new Set<String>();

        for (Book__c book : newBooks) {
            if (book.ISBN__c != null) {
                isbnSet.add(book.ISBN__c);
            }
        }

        if (isbnSet.isEmpty()) {
            return;
        }

        Map<String, Book__c> existingBooks = new Map<String, Book__c>();

        for (Book__c b : [
            SELECT Id, ISBN__c
            FROM Book__c
            WHERE ISBN__c IN :isbnSet
        ]) {
            existingBooks.put(b.ISBN__c, b);
        }

        for (Book__c book : newBooks) {
            if (book.ISBN__c != null &&
                existingBooks.containsKey(book.ISBN__c)) {

                book.addError('Duplicate ISBN is not allowed.');
            }
        }
    }

    // Update Book Status when a book is returned
    public static void updateBookStatus(List<Book_Issue__c> issueList) {

        Set<Id> bookIds = new Set<Id>();

        for (Book_Issue__c issue : issueList) {

            if (issue.Book__c != null &&
                issue.Issue_Status__c == 'Returned') {

                bookIds.add(issue.Book__c);
            }
        }

        if (bookIds.isEmpty()) {
            return;
        }

        List<Book__c> booksToUpdate = [
            SELECT Id, Status__c
            FROM Book__c
            WHERE Id IN :bookIds
        ];

        for (Book__c book : booksToUpdate) {
            book.Status__c = 'Available';
        }

        if (!booksToUpdate.isEmpty()) {
            update booksToUpdate;
        }
    }

}
