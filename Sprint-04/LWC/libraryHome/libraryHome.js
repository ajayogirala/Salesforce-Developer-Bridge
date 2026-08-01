import { LightningElement } from 'lwc';

export default class LibraryHome extends LightningElement {

    librarianName = 'Ajay';

    todayDate = new Date().toLocaleDateString();

    libraryName = 'Central Library';

    department = 'IT';

    books = 500;

    issuedBooks = 120;

    members = 350;

    status = 'Available';

    message = '';

    showMessage() {

        this.message = 'Welcome to Salesforce Library Management';

    }

    issueBook() {

        this.status = 'Issued';

    }

}
