import 'book.dart';

class TextBook extends Book {
  String subjectArea;
  String gradeLevel;

  TextBook(String title, String author, String isbn, this.subjectArea, this.gradeLevel)
      : super(title, author, isbn);
}
