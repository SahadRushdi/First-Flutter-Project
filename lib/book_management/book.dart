enum BookStatus { available, borrowed }

class Book {
  String title;
  String author;
  String isbn;
  BookStatus status;

  Book(this.title, this.author, this.isbn, [this.status = BookStatus.available]);

  // ISBN Validation Method
  bool isValidISBN() {
    return isbn.length == 13; // Example validation for ISBN-13
  }

  // Update Status Method
  void updateStatus(BookStatus newStatus) {
    status = newStatus;
  }
}
