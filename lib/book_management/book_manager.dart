import 'book.dart';

class BookManager {
  List<Book> bookCollection = [];

  void addBook(Book book) {
    bookCollection.add(book);
  }

  void removeBook(String isbn) {
    bookCollection.removeWhere((book) => book.isbn == isbn);
  }

  void updateBookStatus(String isbn, BookStatus newStatus) {
    for (var book in bookCollection) {
      if (book.isbn == isbn) {
        book.updateStatus(newStatus);
      }
    }
  }

  List<Book> searchByTitle(String title) {
    return bookCollection.where((book) => book.title.contains(title)).toList();
  }

  List<Book> searchByAuthor(String author) {
    return bookCollection.where((book) => book.author.contains(author)).toList();
  }

  List<Book> filterByStatus(BookStatus status) {
    return bookCollection.where((book) => book.status == status).toList();
  }
}
