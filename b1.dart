// สร้างคลาส Book
class Book {
  String title;
  String author;

  // Constructor
  Book(this.title, this.author);

  // Getter สำหรับ title
  String get getTitle => title;

  // Setter สำหรับ title
  set setTitle(String title) => this.title = title;

  // Getter สำหรับ author
  String get getAuthor => author;

  // Setter สำหรับ author
  set setAuthor(String author) => this.author = author;
}

// สร้างคลาส Library
class Library {
  List<Book> books = [];

  // เมธอดเพิ่มหนังสือลงในรายการ
  void addBook(Book book) {
    books.add(book);
  }

  // เมธอดแสดงรายชื่อหนังสือทั้งหมด
  void listBooks() {
    for (var book in books) {
      print('Title: ${book.getTitle}, Author: ${book.getAuthor}');
    }
  }
}

void main() {
  // สร้างหนังสือ
  var book1 = Book('The Great Gatsby', 'F. Scott Fitzgerald');
  var book2 = Book('To Kill a Mockingbird', 'Harper Lee');

  // สร้างห้องสมุด
  var library = Library();

  // เพิ่มหนังสือลงในรายการ
  library.addBook(book1);
  library.addBook(book2);

  // แสดงรายชื่อหนังสือทั้งหมดในห้องสมุด
  library.listBooks();
}